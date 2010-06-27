all: figures
	pdflatex tcp_model.tex
#	bibtex tcp_model
	pdflatex tcp_model.tex
	pdflatex tcp_model.tex 

figures:
	cd ./figs; gnuplot tdp_macro.ptl; epstopdf tdp_macro.eps
	cd ./figs; gnuplot tdp_detalhe.ptl; epstopdf tdp_detalhe.eps

clean:
	rm -rf *.pdf
	rm -rf *.log
	rm -rf *.aux
	rm -rf figs/*.pdf
	rm -f figs/tdp_macro.eps
	rm -f figs/tdp_detalhe.eps
