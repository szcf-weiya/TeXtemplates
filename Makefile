.ONESHELL: # https://stackoverflow.com/questions/1789594/how-do-i-write-the-cd-command-in-a-makefile

define mk
	xelatex $@
	biber $@
	xelatex $@
	xelatex $@
	rm -f *.aux *.hd *.log *.out *.bcf *.run.xml *.bbl *.blg
endef

define mk2
	xelatex main
	biber main
	xelatex main
	xelatex main
	rm -f *.aux *.hd *.log *.out *.bcf *.run.xml *.bbl *.blg
endef

hw_en:: # https://stackoverflow.com/questions/2145590/what-is-the-purpose-of-phony-in-a-makefile
	cd $@
	$(mk2)

manuscript::
	cd $@
	$(mk2)

clean:
	rm -f */*.aux */*.hd */*.log */*.out */*.bcf */*.run.xml */*.bbl */*.blg */*.fls */*.synctex.gz */*.fdb_latexmk