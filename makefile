.PHONY: all clean purge
all:
	pdflatex thesis
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

clean:
	git clean -xdf

purge: clean
	git reset --hard

