<p align="center" width="100%">
    <img width="50%" src="Design/Exports/ss-logo-alt-horizontal-bordered-on_dark.svg" alt="sota staircase Horizontal Logo"> 
</p>

# The sota staircase Mono-repository

Primary Repository: <https://forge.joshwel.co/mark/sota>  
Submission Mirror: <https://github.com/markjoshwel/sota>

| **Name** |        **Primary Role**         | **Secondary Role** |  **Forge**  |   **GitHub**   |
|:--------:|:-------------------------------:|:------------------:|:-----------:|:--------------:|
|   mark   | creative and technical director | senior programmer  |    @mark    |  @markjoshwel  |
|   ryan   |           programmer            |     generalist     |    @ryan    | @sc0rch-thinks |
|   sai    |         lead 3d artist          |  quality checker   | @sai-thinks | @sippy-thinks  |

- [Handbook](#handbook)
  - [on 3D Modelling (Maya, Blender, ZBrush, etc.)](#on-3d-modelling-maya-blender-zbrush-etc)
  - [on Graphic and UI/UX Design](#on-graphic-and-uiux-design)
  - [on Game Development](#on-game-development)
  - [on Game and Level Design](#on-game-and-level-design)
  - [on Documentation (for All Modules)](#on-documentation-for-all-modules)
  - [on Repository Syncing](#on-repository-syncing)
- [Licence and Credits](#licence-and-credits)
  - [Third-party Licences](#third-party-licences)

## Handbook

### on 3D Modelling (Maya, Blender, ZBrush, etc.)

| Lead | Sai |
|:----:|:---:|

design-as-in-modelling your assets with modularity in mind, anything that can
be modular should be modular

design-as-in-look should be checked with the group 

structure your files similarly:

```text
Modelling
├── Sources
│   ├── <Asset Name>.blend
│   └── <Asset Name> (Maya Project Directory)
│       ├── ...
│       └── workspace.mel
├── Textures
│   └── <Asset Name>
│       ├── *.png
│       └── ...
├── Modulars
│   ├── <Asset Name>_lowpoly
│   └── <Asset Name>_highpoly
└── Heroes
    ├── <Asset Name>_lowpoly
    │   └── *.fbx
    └── <Asset Name>_highpoly
```

### on Graphic and UI/UX Design

| Lead | Mark |
|:----:|:----:|

if it involves the brand:
follow the brand guidelines at [Documentation/sota staircase Brand Guidelines.pdf](Documentation/sota%20staircase%20Brand%20Guidelines.pdf)

and then send it to mark for approval (●'◡'●)

anything that can be saved locally (including figma files, btw) _should_ be saved
locally, and then pushed to the forge under `Design/`

organise as you wish but make sure it's logical

### on Game Development

| Lead | Mark |
|:----:|:----:|

1. make changes

2. make sure the language checker isn't nagging you  
   (spelling and grammatical errors)

3. make sure intellisense isn't nagging you  
   (variable/class naming conventions, etc.)

4. reformat using rider's **Reformat and Cleanup Code** function,
   using the **Built-in: Full Cleanup** profile

   ![example](Documentation/Examples/reformat.png)

5. push **to the forge**, or branch off and make a pull request if there are conflicts

### on Game and Level Design

| Lead | kinda everyone more so mark |
|:----:|:---------------------------:|

for this, just discuss with the group; either through the telegram group or through an issue
on [the forge](https://forge.joshwel.co/mark/sota/issues)

### on Documentation (for All Modules)

| Lead | kinda everyone more so mark |
|:----:|:---------------------------:|

follow the brand guidelines at [Documentation/sota staircase Brand Guidelines.pdf](Documentation/sota%20staircase%20Brand%20Guidelines.pdf)

source files (.docx, .fig, etc.) should be in the respective modules' directory,
and then exported as .pdfs to `Documentation/*.pdf`

### on Repository Syncing

| Wizard | Mark |
|:------:|:----:|

instructions:

```text
python restepper.py
```

if it screams at you, fix them

if it breaks, refer to the resident "wizard"

for what the script does, see the script itself: [sync.py](sync.py)

## Licence and Credits

"NP resources" hereby refers to resources provided by Ngee Ann Polytechnic (NP) for the
development of the project

1. software source code

   software source code, unless otherwise stated, is licenced under the 0BSD licence.
   for more information, see [LICENCE.0BSD](LICENCE.0BSD)

   considering how many YouTube tutorials were used on ryan's end,
   I doubt we extensively used NP resources

2. models made with ["extensive use of NP resources"](https://www.np.edu.sg/student_ip):

   specifically coming from, or in part have had the following software and/or
   services involved:

   - Autodesk Maya
   - Adobe Substance 3D
     - Substance 3D Modeler
     - Substance 3D Sampler
     - Substance 3D Designer
     - Substance 3D Painter
     - Substance 3D Stager
     - Substance 3D Assets
  
   would be all rights reserved, unless otherwise stated

   (_i mean mr q said this already lol_)

   the only exception to this is if the model was made in blender and doesn't
   touch substance painter, in which it falls under the modified unsplash licence
   noted below

3. whatever is left

   everything else, from assets to documentation, unless otherwise stated,
   is licenced under a modified unsplash licence.
   for more information, see [LICENCE.UNSPLASH](LICENCE.UNSPLASH)

   **disclaimer**: the creative lead (mark) has been using adobe software even
   [before enrolling into np](https://github.com/markjoshwel/portfolio-eae/blob/main/public/assets/skill-adobe.png),
   so whether it's "extensive use" is fair game lol

   (_also yea I don't really have a better example than my eae portfolio oops_)

### Third-party Licences

exceptions to the above licences are as follows:

> Template:
> ```
> - (Asset/Work Name) by (Author Name): (Licence Name)
>   `directory path, file path or glob pattern`
> ```
> Example:
>
> - Frogman by Frog Creator: Standard Unity Asset Store EULA (Extension Asset)  
>   `Assets/Characters/Frogman`
>
> comma-separate multiple licences, and use code blocks if you need to list multiple files/directories/patterns
