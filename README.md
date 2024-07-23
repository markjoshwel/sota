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
        - [Syncing to GitHub via ReStepper](#syncing-to-github-via-restepper)
        - [SideStepper and the .sotaignore file](#sidestepper-and-the-sotaignore-file)
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

for this, discuss with the group; either through the telegram group or through an issue
on [the forge](https://forge.joshwel.co/mark/sota/issues)

### on Documentation (for All Modules)

| Lead | kinda everyone more so mark |
|:----:|:---------------------------:|

source files (.docx, .fig, etc.) should be in the respective modules' directory,
and then exported as .pdfs to `Documentation/*.pdf`

### on Repository Syncing

| Wizard | Mark |
|:------:|:----:|

#### Syncing to GitHub via ReStepper

instructions:

```text
python sync.py
```

if it screams at you, fix them  
if it breaks, refer to the resident "wizard"

for what the script does, see the script itself: [sync.py](sync.py)

##### Advanced Usage

you probably don't need to ever use these :p

the following environment variables can be set:

- `SOTA_SIDESTEP_MAX_WORKERS`  
  how many workers to use for repository duplication,
  default is how many cpu threads are available

the following command line arguments can be used:

- `--skipsotaignoregen`  
  skips generating a `.sotaignore` file,
  useful if you _know_ you've already generated one beforehand

- `--test`  
  does everything except actually pushing to GitHub

there's more, but god forbid you need to use them unless you're changing the script,
search for `argv` in the script if you're comfortable with dragons

#### SideStepper and the .sotaignore file

the `.sotaignore` file is a file that tells the sync script what to ignore when syncing
to GitHub, and should be in the root of the repository

it is automatically generated by the sync script and should not be manually edited
unless there's a file we want to exclude

any file over 100MB is automatically added when running ReStepper (the sync script) or
SideStepper (the script that generates the `.sotaignore` file)

to manually generate this without syncing, run:

```text
python sidestepper.py
```

we may or may not want to add the contents of the `.sotaignore` file to the `.gitignore`
but that's probably better off as a case-by-case basis type thing

for what the script does, see the script itself: [sidestepper.py](sidestepper.py)

##### Advanced Usage

you probably don't need to ever use these :p

the following environment variables can be set:

- `SOTA_SIDESTEP_CHUNK_SIZE`  
  how many files to chunk for file finding, default is 16

- `SOTA_SIDESTEP_MAX_WORKERS`  
  how many workers to use for file finding,
  default is how many cpu threads are available

- `SOTA_SIDESTEP_PARALLEL`  
  whether to use multiprocessing for large file finding, default is false

  hilariously, it's ~4-5x slower than single-threaded file finding, but the option
  is still present because it was made before the fourth implementation of
  the large file finding algorithm
  (now called SideStepper because names are fun, sue me)

the following command line arguments can be used:

- `--parallel`  
  same behaviour as setting the `SOTA_SIDESTEP_PARALLEL` environment variable

## Licence and Credits

"NP resources" hereby refers to resources provided by Ngee Ann Polytechnic (NP) for use
in student work during the course of our study

1. software source code

   software source code, unless otherwise stated, is licenced under the 0BSD licence.
   for more information, see [LICENCE.0BSD](LICENCE.0BSD)

   considering how many YouTube tutorials were used on ryan's end,
   I doubt we extensively used NP resources

2. models made with ["extensive use of NP resources"](https://www.np.edu.sg/student_ip):

   specifically, coming from or in part has had the following software and/or
   services involved:

    - Autodesk Maya
    - Adobe Substance 3D
        - Substance 3D Modeler
        - Substance 3D Sampler
        - Substance 3D Designer
        - Substance 3D Painter
        - Substance 3D Stager
        - Substance 3D Assets

   would have all rights reserved, unless otherwise stated

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
   so whether it is "extensive use" is fair game lol

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

- Various References: All Rights Reserved
  - HDB Corridor: https://dollarsandsense.sg/hdb-lease-buyback-scheme-now-open-to-all-flats-heres-how-it-works/
  - HDB Corridor: https://www.propertyguru.com.sg/property-guides/can-you-own-the-space-in-front-of-your-hdb-flat-10697
  - Firewatch screenshots from the king of fnaf: https://www.youtube.com/watch?v=gyKg7xmVIKw&t=1763s
  - HDB House Interior:https://www.swissinterior.com.sg/blog/4-room-hdb-interior-design-ideas, https://qanvast.com/sg/articles/types-of-3-room-bto-flat-layouts-which-ones-are-unique-2822
  - Interior Lamp: https://www.ikea.com/sg/en/p/taernaby-table-lamp-dimmable-anthracite-60323894/
  - Interior Bedside Table: https://www.ikea.com/sg/en/p/nordkisa-bedside-table-bamboo-40447678/
  - Interior Bedframe: https://www.ikea.com/sg/en/p/ramnefjaell-upholstered-bed-frame-kilanda-light-beige-luroey-s29560166/#content
  - Interior Dining Chair: https://www.ikea.com/sg/en/p/kaettil-chair-white-knisa-light-grey-50500340/
  - Interior Dining Table: https://www.ikea.com/sg/en/p/moerbylanga-lustebo-table-and-4-chairs-oak-veneer-brown-stained-viarp-beige-brown-s49523521/
  - Interior Sofa: https://www.ikea.com/sg/en/p/kivik-2-seat-sofa-tresund-anthracite-s79482821/
  - Interior Desk: https://www.ikea.com/sg/en/p/lagkapten-alex-desk-white-stained-oak-white-s29417654/
  - Interior Office Chair: https://secretlab.sg/products/titan-evo-2022-series?sku=M07-E24PU-ASHHH1R
  - Interior Wardrobe: https://www.ikea.com/sg/en/p/musken-wardrobe-with-2-doors-3-drawers-white-50378684/
  - Interior Fridge: https://www.harveynorman.com.sg/home-appliances/kitchen-appliances-en/fridges/bosch-fridge-kfn96axea.html
  - Interior Induction Stove: https://www.electrolux.com.sg/appliances/stoves-hobs/ehi8255be/
  - Interior Pots And Pans: https://hexclad.com/products/pots-and-pans-set
  - Interior Kitchen Cabinets: https://www.thesimsresource.com/downloads/details/category/sims4-sets-objects-kitchen/title/dream-kitchen-set-pt-1/id/1680892/
  

