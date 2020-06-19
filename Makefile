.PHONY: clean

imagier.pdf: imagier.tex fig/*.tex pkg/*.sty
	pdflatex --shell-escape imagier

testfig.pdf: testfig.tex fig/*.tex
	pdflatex testfig

phasitron-coupe.pdf: phasitron-coupe.tex fig/fig-phasitron-coupe.tex fig/fig-dilution.tex
	pdflatex phasitron-coupe

phasitron2.pdf: phasitron2.tex fig/fig-phasitron-2.tex
	pdflatex phasitron2

multimeter.pdf: multimeter.tex
	pdflatex multimeter

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.ent *.auxlock pdffig/imagier-figure*.md5  pdffig/imagier-figure*.log 
