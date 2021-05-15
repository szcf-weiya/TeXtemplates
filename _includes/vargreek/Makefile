source=vargreek.tex
define mk
	xelatex --jobname=$@ ${source}
	rm -f *.aux *.log
	pdfcrop --bbox "120 700 300 720" $@.pdf $@
	rm $@.pdf
endef

FreeMono:
	$(mk)

Asana-Math:
	$(mk)

DejaVuSerif:
	$(mk)

Ubuntu:
	$(mk)

all: Asana-Math DejaVuSerif FreeMono Ubuntu
	pdftk $^ cat output vargreek.pdf
	rm -f $^

