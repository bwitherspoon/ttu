.PHONY: all clean

all: ttu.pdf

clean:
	-$(RM) -rf *.{aux,bbl,blg,log,nav,out,pdf,snm,toc}

%.tex:
	$(error Input LaTeX file "$@" not found)

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $< && pdflatex -interaction=batchmode $<
