FILE = 'hw_biblatex_apa'
all:
	xelatex $(FILE)
	biber $(FILE)
	xelatex $(FILE)
	xelatex $(FILE)
	rm -f *.aux *.hd *.log *.out *.bcf *.run.xml *.bbl *.blg
