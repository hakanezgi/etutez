default:
	pdflatex tez.tex
	bibtex   tez
	pdflatex tez.tex
	pdflatex tez.tex
#	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.toc
clean:
	rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.pdf *.toc
