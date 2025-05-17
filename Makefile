default: 	target\
		 	target/main.pdf

SOURCES=images/\
		papers/\
		main.tex\
		00-titlepage.tex\
		01-foreword.tex\
		02-letter-ed.tex\
		03-acknowledgements.tex\
		90-contributors.tex
target:
	mkdir target
target/main.pdf: $(SOURCES)
	cp -r $^ target/
	cd target &&\
		pdflatex main.tex &&\
		pdflatex main.tex &&\
		pdflatex main.tex

clean:
	rm -rf target/
