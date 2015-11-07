.PHONY: all clean

all: template.pdf

template.pdf: logo.png wordmark.png

clean:
	-$(RM) -rf *.{aux,bbl,blg,log,nav,out,pdf,snm,toc}

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $< && pdflatex -interaction=batchmode $<
