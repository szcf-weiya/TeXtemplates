# TeXtemplates

There are some latex templates that I used, and it is easy to create a tex file with Makefile and bib file if necessary from the avaiable templates.

```bash
# step 1: git clone the repository
git clone git@github.com:szcf-weiya/TeXtemplates.git
# step 2: create shortcut for the script `new.sh` via `alias`
echo "alias newtex='~/github/TeXtemplates/new.sh'" >> ~/.bashrc
source ~/.bashrc
# step 3: run at arbitrary location
newtex template targetfilename targetfolder
```

