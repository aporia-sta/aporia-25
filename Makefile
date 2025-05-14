default: 	target\
		 	target/main.pdf
target:
	mkdir target
target/main.pdf: images/ papers/ main.tex
	cp -r $^ target/
	cd target &&\
		pdflatex main.tex &&\
		pdflatex main.tex &&\
		pdflatex main.tex
