PDF_TARGET = lt-1-slides.pdf
PDF_SOURCE = $(PDF_TARGET:.pdf=.tex)

FLAGS = -pdf -shell-escape

.PHONY: all refresh clean distclean

all: ${PDF_TARGET}

${PDF_TARGET}: $(PDF_SOURCE)
	latexmk $(FLAGS) $(PDF_SOURCE)

refresh:
	latexmk $(FLAGS) -pvc $(PDF_SOURCE)

clean:
	$(RM) $(PDF_SOURCE:.tex=.aux) $(PDF_SOURCE:.tex=.log)
	$(RM) $(PDF_SOURCE:.tex=.out) $(PDF_SOURCE:.tex=.fdb_latexmk)
	$(RM) $(PDF_SOURCE:.tex=.log) $(PDF_SOURCE:.tex=.fls)
	$(RM) $(PDF_SOURCE:.tex=.bbl) $(PDF_SOURCE:.tex=.blg)
	$(RM) $(PDF_SOURCE:.tex=.snm) $(PDF_SOURCE:.tex=.toc)
	$(RM) $(PDF_SOURCE:.tex=.nav)
	$(RM) -r svg-inkscape/ _minted-lt-1-slides/

distclean:
	$(RM) $(PDF_TARGET)

