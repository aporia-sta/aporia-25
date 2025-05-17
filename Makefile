default: 	target\
		 	target/main.pdf

SOURCES=images/\
		papers/\
		main.tex\
		00-titlepage.tex\
		01-foreword.tex
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
