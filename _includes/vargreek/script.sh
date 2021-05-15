#!/bin/bash
# fonts=(FreeMono Asana-Math DejaVuSerif "Linux Biolinum O" "")
fonts=($(fc-list --format="%{family[0]}\n" :lang=en | grep -e "[a-zA-Z]" | grep -v CJK | sort | uniq | sed 's/ /-/g'))
# fonts=("Asana-Math")
source=vargreek.tex
# for font in ${fonts[@]}; do
for ((i = 0; i < ${#fonts[@]}; i++)); do
    font=${fonts[$i]}
    orig=$font
    # orig=${font//[-]/ }
    # echo $font ${font//[-]/ }
    xelatex -halt-on-error --jobname="$orig" ${source}
	pdfcrop --bbox "120 700 300 720" "$orig".pdf $font.croppdf
done
pdftk *.croppdf cat output all.pdf
rm -f *.aux *.log