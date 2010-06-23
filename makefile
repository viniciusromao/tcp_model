all:

	pdflatex tcp_model.tex
#	bibtex tcp_model
	pdflatex tcp_model.tex
	pdflatex tcp_model.tex 

clean:
	rm -rf *.pdf
	rm -rf *.log
	rm -rf *.aux
	rm -rf figs/*.pdf
