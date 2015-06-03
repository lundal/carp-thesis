.PHONY: all clean purge
all:
	pdflatex -jobname=temp thesis
	pdflatex -jobname=temp thesis
	bibtex temp
	pdflatex -jobname=temp thesis
	pdflatex -jobname=temp thesis
	mv temp.pdf thesis.pdf

clean:
	git clean -xdf

purge: clean
	git reset --hard

