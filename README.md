# TeXtemplates

## Run Examples


```bash
$ make hw_en 
$ evince hw_en/main.pdf # check the output pdf
$
$ make manuscript
$ evince manuscript/main.pdf # check the output pdf
```

## Generate from Templates

There are some latex templates that I used, and it is easy to create a tex file with Makefile (and bib file if needed) from the available templates.

```bash
# step 1: git clone the repository
git clone git@github.com:szcf-weiya/TeXtemplates.git
# step 2: create shortcut for the script `new.sh` via `alias`
echo "alias newtex='~/github/TeXtemplates/new.sh'" >> ~/.bashrc
source ~/.bashrc
# step 3: run at arbitrary location
newtex templatename targetfilename targetfolder
```

