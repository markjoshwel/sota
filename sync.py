# sota staircase ReStepper
# licence: 0BSD

from os.path import getsize
from pathlib import Path
from pprint import pformat
from shutil import copytree
from subprocess import CompletedProcess, run
from sys import argv, stderr
from tempfile import TemporaryDirectory
from textwrap import indent
from traceback import format_tb
from typing import Any, Callable, Final, TypeVar

try:
    from gitignore_parser import parse_gitignore  # type: ignore
except ImportError:
    print(
        "critical error: 'gitignore_parser' is not installed, please run 'pip install gitignore-parser' to install it"
    )
    exit(1)

# constants
INDENT: Final[str] = "   "

REPO_DIR: Final[Path] = Path(__file__).parent
REPO_SOTAIGNORE: Final[Path] = REPO_DIR.joinpath(".sotaignore")
REPO_URL_GITHUB: Final[str] = "github.com/markjoshwel/sota"
REPO_URL_FORGE: Final[str] = "forge.joshwel.co/mark/sota"

COMMIT_MESSAGE: Final[str] = "chore(restep): sync with forge"
COMMIT_AUTHOR: Final[str] = "sota staircase ReStepper <ssrestepper@joshwel.co>"

NEUTERED_GITATTRIBUTES: Final[str] = (
    """# auto detect text files and perform lf normalization\n* text=auto\n"""
)

# generics because i <3 static types
Rc = TypeVar("Rc")

# dictionary to share state across steps
r: dict[str, str] = {}


def _default_post_func(rc: Rc) -> Rc:
    """
    default post-call function for steps, does nothing

    for steps that return a CompletedProcess, this function will run the
    `_command_post_func` function

    args:
        rc: Rc
            return object from a step function
    """
    if isinstance(rc, CompletedProcess):
        _command_post_func(rc)
    return rc


def _command_post_func(
    rc: CompletedProcess,
    fail_on_error: bool = True,
    quit_early: bool = False,
    quit_message: str = "the command gave unexpected output",
) -> CompletedProcess:
    """
    default post-call function for command steps, checks if the command was
    successful and prints the output if it wasn't

    if the command was successful, the stdout and stderr are stored in the
    shared state dictionary r under 'stdout' and 'stderr' respectively

    args:
        rc: CompletedProcess
            return object from subprocess.run
        fail_on_error: bool
            whether to fail on error
        quit_early: bool
            whether to quit early
        quit_message: str
            the message to print if quitting early

    returns:
        CompletedProcess
            the return object from subprocess.run
    """

    if quit_early:
        print(f"\n\nfailure: {quit_message}\n", file=stderr)

    else:
        r["stdout"] = rc.stdout.decode() if isinstance(rc.stdout, bytes) else "\0"
        r["stderr"] = rc.stderr.decode() if isinstance(rc.stderr, bytes) else "\0"
        r["blank/stdout"] = "yes" if (r["stdout"].strip() == "") else ""
        r["blank/stderr"] = "yes" if (r["stderr"].strip() == "") else ""
        r["blank"] = "yes" if (r["blank/stdout"] and r["blank/stderr"]) else ""
        r["errored"] = "" if (rc.returncode == 0) else str(rc.returncode)

        # return if the command was successful
        # or if we're not failing on error
        if (rc.returncode == 0) or (not fail_on_error):
            return rc

        else:
            print(
                f"\n\nfailure: command '{rc.args}' failed with exit code {rc.returncode}",
                f"{INDENT}stdout:",
                (
                    indent(text=rc.stdout.decode(), prefix=f"{INDENT}{INDENT}")
                    if (isinstance(rc.stdout, bytes) and (rc.stdout != b""))
                    else f"{INDENT}{INDENT}(no output)"
                ),
                f"{INDENT}stderr:",
                (
                    indent(text=rc.stderr.decode(), prefix=f"{INDENT}{INDENT}")
                    if (isinstance(rc.stderr, bytes) and (rc.stderr != b""))
                    else f"{INDENT}{INDENT}(no output)"
                )
                + "\n",
                sep="\n",
            )

    exit(
        rc.returncode if (isinstance(rc.returncode, int) and rc.returncode != 0) else 1
    )


def get_large_files(target_dir: Path, max_bytes: int = 100000000) -> list[Path]:
    """
    recursively iterate through a directory and find files that are over a
    certain size, respecting any .gitignore files

    args:
        target_dir: Path
            the directory to search
        max_bytes: int
            the maximum size in bytes

    returns:
        list[Path]
            list of large files
    """

    gitignore_matchers: dict[Path, Callable[[Any], bool]] = {}
    large_files: list[Path] = []
    all_files: list[Path] = []
    for f in target_dir.rglob("*"):
        if not f.is_file():
            continue
        if str(REPO_DIR.joinpath(".git")) in str(f.parent):
            continue
        all_files.append(f)

    target_dir_gitignore = target_dir.joinpath(".gitignore")
    if not target_dir_gitignore.exists():
        return []

    # first pass: check for .gitignore files
    for repo_file in all_files:
        # is this not a .gitignore file? skip
        if repo_file.name != ".gitignore":
            continue

        # if we're here, the file is a .gitignore file
        # add it to the parser
        gitignore_matchers[repo_file.parent] = parse_gitignore(
            repo_file, base_dir=repo_file.parent
        )

    for repo_file in all_files:
        # if the file is a directory, skip
        # if not repo_file.is_file():
        #     continue

        # # if we're in the .git directory, skip
        # if str(REPO_DIR.joinpath(".git/")) in str(repo_file):
        #     continue

        # check if it's ignored
        for ignore_dir, matcher in gitignore_matchers.items():
            # if we're not in the ignore directory, skip
            if str(ignore_dir) not in str(repo_file):
                continue

            # if the file is ignored, skip
            if matcher(repo_file):
                # print("ignored:", repo_file)
                continue

        # if we're here, the file is not ignored
        # check if it's over 100mb

        if getsize(repo_file) > 100000000:
            large_files.append(repo_file)

    return large_files


def generate_sotaignore(large_files: list[Path]) -> None:
    """
    generate a .sotaignore file from a list of large files and the existing
    .sotaignore file

    args:
        large_files: list[Path]
            list of large files
    """

    old_sotaignore = (
        REPO_SOTAIGNORE.read_text().strip().splitlines()
        if REPO_SOTAIGNORE.exists()
        else []
    )

    new_sotaignore = [ln for ln in old_sotaignore] + [
        lf.relative_to(REPO_DIR).as_posix()
        for lf in large_files
        if lf.relative_to(REPO_DIR).as_posix() not in old_sotaignore
    ]

    # check if the sotaignore file starts with a comment

    if new_sotaignore and not new_sotaignore[0].startswith("#"):
        new_sotaignore.insert(
            0,
            "# unless you know what you're doing, don't edit this file",
        )
        new_sotaignore.insert(
            0,
            "# anything here either can't or shouldn't be uploaded github",
        )
        new_sotaignore.insert(
            0,
            "#",
        )
        new_sotaignore.insert(
            0,
            "# .sotaignore file generated by sota staircase ReStepper",
        )

    if new_sotaignore == []:
        return

    REPO_SOTAIGNORE.touch(exist_ok=True)
    REPO_SOTAIGNORE.write_text("\n".join(new_sotaignore) + "\n", encoding="utf-8")


def rewrite_gitattributes(target_dir: Path) -> None:
    """
    rewrite the .gitattributes file in a directory to disable git-lfs

    args:
        target_dir: Path
            the directory to search
    """

    # recursively search for .gitattributes files
    for repo_file in target_dir.rglob(".gitattributes"):
        repo_file.write_text(NEUTERED_GITATTRIBUTES, encoding="utf-8")


# helper function for running steps
def step(
    func: Callable[[], Rc],
    desc: str = "",
    post_func: Callable[[Rc], Rc] = _default_post_func,
) -> Rc:
    """
    helper function for running steps

    args:
        desc: str
            description of the step
        func: Callable[[], Rc]
            function to run
        post_func: Callable[[Rc], Rc]
            post function to run after func

    returns:
        Rc
            return object from func
    """

    # run the function
    if desc != "":
        print(f"{desc}..", end="", file=stderr)
        stderr.flush()

    try:
        rc = func()

    except Exception as exc:
        print(
            f"\n\nfailure running step: {exc} ({exc.__class__.__name__})",
            "\n".join(format_tb(exc.__traceback__)) + "\n",
            file=stderr,
            sep="\n",
        )
        exit(1)

    if desc != "":
        print(".", end="", file=stderr)
        stderr.flush()

    # run the post function
    try:
        rp = post_func(rc)

    except Exception as exc:
        print(
            f"\n\nfailure running post-step: {exc} ({exc.__class__.__name__})",
            "\n".join(format_tb(exc.__traceback__)) + "\n",
            file=stderr,
            sep="\n",
        )
        exit(1)

    # yay
    if desc != "":
        print(" done", file=stderr)
        stderr.flush()

    return rp


def post_remote_v(rc: CompletedProcess) -> CompletedProcess:
    """
    post-call function for 'git remote -v' command, parses the output and
    checks for the forge and github remotes, storing them in the shared state
    under 'remote/forge', 'remote/forge/url', 'remote/github', and
    'remote/github/url' respectively

    args:
        rc: CompletedProcess
            return object from subprocess.run

    returns:
        CompletedProcess
            return object from subprocess.run
    """

    if not isinstance(rc.stdout, bytes):
        return _command_post_func(rc)

    for line in rc.stdout.decode().split("\n"):
        # github  https://github.com/markjoshwel/sota (fetch)
        # github  https://github.com/markjoshwel/sota (push)
        # origin  https://forge.joshwel.co/mark/sota.git (fetch)
        # origin  https://forge.joshwel.co/mark/sota.git (push)

        sline = line.split(maxsplit=1)
        if len(line) < 2:
            continue

        # remote='origin'  url='https://forge.joshwel.co/mark/sota.git (fetch)'
        remote, url = sline

        # clean up the url
        if (REPO_URL_FORGE in url) or (REPO_URL_GITHUB in url):
            # url='https://forge.joshwel.co/mark/sota.git'
            url = url.split("(", maxsplit=1)[0].strip()

        if REPO_URL_FORGE in url:
            r["remote/forge"] = remote
            r["remote/forge/url"] = url

        elif REPO_URL_GITHUB in url:
            r["remote/github"] = remote
            r["remote/github/url"] = url

    return _command_post_func(rc)


def err(message: str, exc: Exception | None = None) -> None:
    """
    helper function for printing error messages, prints the message and the
    shared state dictionary r

    args:
        message: str
            the error message to print
        exc: Exception | None
            the exception that caused the error, if any
    """

    print(
        "\n" + message,
        (
            ""
            if (exc is None)
            else indent(
                text=(
                    f"{exc} ({exc.__class__.__name__})\n"
                    f"{'\n'.join(format_tb(exc.__traceback__))}\n"
                ),
                prefix=INDENT,
            )
        )
        + (indent(text=pformat(r), prefix=INDENT) + "\n"),
        file=stderr,
        sep="\n",
    )
    exit(1)


def main() -> None:
    """
    command line entry point
    """

    with TemporaryDirectory(delete="--keep" not in argv) as dir_temp:
        print(
            "\nsota staircase ReStepper\n"
            "\n"
            "directories\n"
            f"   real repo : {REPO_DIR}\n"
            f"   temp repo : {dir_temp}\n"
        )

        # helper partial function for command
        def cmd(
            command: str, wd: Path | str = dir_temp, **kwargs
        ) -> Callable[[], CompletedProcess]:
            return lambda: run(
                command,
                shell=True,
                cwd=wd,
                capture_output=True,
                **kwargs,
            )

        step(
            func=cmd("git filter-repo --version"),
            post_func=lambda rc: _command_post_func(
                rc,
                quit_early=rc.returncode != 0,
                quit_message="git filter-repo is not installed, install it using 'pip install git-filter-repo' or 'pipx install git-filter-repo'",
            ),
        )

        step(func=cmd("git status --porcelain", wd=REPO_DIR))
        if (not r["blank"]) and ("--iknowwhatimdoing" not in argv):
            err(
                "critical error: repository is not clean, please commit changes first",
            )

        step(
            desc="1 pre\tgenerating .sotaignore",
            func=lambda: generate_sotaignore(get_large_files(REPO_DIR)),
        )

        step(
            desc="2 pre\tduplicating repo",
            func=lambda: (
                copytree(
                    src=REPO_DIR,
                    dst=dir_temp,
                    dirs_exist_ok=True,
                )
            ),
        )

        step(
            func=cmd('python -c "import pathlib; print(pathlib.Path.cwd().absolute())"')
        )
        if str(Path(dir_temp).absolute()) != r["stdout"].strip():
            err(
                f"critical error (whuh? internal?): not inside the temp dir '{str(Path(dir_temp).absolute())}'"
            )

        # check for forge and github remotes
        step(
            func=cmd("git remote -v"),
            post_func=post_remote_v,
        )
        if "remote/forge" not in r:
            err("critical error (whuh?): no forge remote found")

        # get the current branch
        step(
            func=cmd("git branch --show-current"),
        )
        branch = r["stdout"].strip()
        if r.get("errored", "yes") or branch == "":
            err("critical error (whuh?): couldn't get current branch")

        step(func=cmd(f"git fetch {r['remote/forge']}"))
        step(func=cmd(f"git rev-list HEAD...{r['remote/forge']}/{branch} --count"))
        if (r.get("stdout", "").strip() != "0") and ("--dirty" not in argv):
            err(
                "critical error (whuh?): not up to date with forge... sync your changes first?"
            )

        step(desc="3 lfs\tfetch lfs objects", func=cmd("git lfs fetch"))

        step(
            desc="4 lfs\tmigrating lfs objects",
            func=cmd(
                'git lfs migrate export --everything --include="*" --remote=origin'
            ),
        )

        step(
            desc="5 lfs\tuninstall lfs in repo",
            func=cmd("git lfs uninstall"),
        )

        step(
            func=cmd("git lfs ls-files"),
        )
        if not r["blank"]:
            err(
                "critical error (whuh? internal?): lfs objects still exist post-migrate and uninstall"
            )

        temp_sotaignore = Path(dir_temp).joinpath(".sotaignore")

        if temp_sotaignore.exists():
            try:
                sotaignore = temp_sotaignore.read_text(encoding="utf-8").strip()
            except Exception as exc:
                err("critical error: couldn't read .sotaignore file", exc=exc)

            sotaignore_large_files: list[str] = [
                line
                for line in sotaignore.splitlines()
                if not line.startswith("#") and line.strip() != ""
            ]

            # FUTURE: if this becomes slow, start chunking --path arguments
            # https://stackoverflow.com/questions/43762338/how-to-remove-file-from-git-history

            for n, lf in enumerate(sotaignore_large_files, start=1):
                step(
                    desc=f"6 lfs\tfilter ({n}/{len(sotaignore_large_files)}) - {lf}",
                    func=cmd(f'git filter-repo --force --invert-paths --path "{lf}"'),
                )

        step(
            desc="7 fin\tneuter .gitattributes",
            func=lambda: rewrite_gitattributes(Path(dir_temp)),
        )

        step(
            desc="8 fin\tcommit",
            func=cmd(
                f"""git commit -am "{COMMIT_MESSAGE}" --author="{COMMIT_AUTHOR}" --allow-empty""",
            ),
        )

        if r.get("remote/github") is None:
            step(
                func=cmd(f"git remote add github https://{REPO_URL_GITHUB}.git"),
            )
            if r.get("errored", "yes"):
                err("critical error (whuh?): couldn't add github remote")
            r["remote/github"] = "github"

        step(
            desc=f"9 fin\tpushing to github/{branch}",
            func=cmd(
                f"git push {r['remote/github']} {branch} --force"
                if ("--test" not in argv)
                else "git --version"
            ),
        )

        step(
            desc="X fin\tcleanup",
            func=lambda: None,
        )

    print("\n--- done! ☆*: .｡. o(≧▽≦)o .｡.:*☆ ---\n", file=stderr)


if __name__ == "__main__":
    main()
