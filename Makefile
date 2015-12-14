.PHONY: all clean

all: thesis.pdf

thesis.pdf: thesis.tex # img/*.png
	pdflatex -interaction=nonstopmode -halt-on-error thesis.tex && \
	pdflatex -interaction=nonstopmode -halt-on-error thesis.tex

clean:
	rm -f thesis.pdf *.aux *.log *.toc *.out *.pdf
