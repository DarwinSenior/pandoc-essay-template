all:
	$(MAKE) essay.pdf
clear:
	rm -f *.aux *.bcf *.out *.bbl *.blg *.xml *.log
clean:
	rm -f essay.pdf essay.tex

essay.pdf: essay.tex biber
	pdflatex essay.tex && ./biber essay && pdflatex essay.tex && $(MAKE) clear

essay.tex: essay.md template.tex
	pandoc --template=template.tex --biblatex -o essay.tex essay.md

