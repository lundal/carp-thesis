.PHONY: all clean purge
all:
	pdflatex report
	bibtex report
	pdflatex report
	pdflatex report

clean:
	git clean -xdf

purge: clean
	git reset --hard

