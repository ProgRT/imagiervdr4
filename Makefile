.PHONY: clean

imagier.pdf: imagier.tex fig/*.tex pkg/*.sty
	pdflatex imagier

clean:
	rm *.log *.nav *.aux *.out *.snm *.toc *.ent
