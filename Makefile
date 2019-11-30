.PHONY: example

example: example1.png example2.png example3.png example4.png example5.png

example1.png: tikz2png example.tex
	./tikz2png -i example.tex -o $@

example2.png: tikz2png example.tex
	./tikz2png -i example.tex --background=white -o $@

example3.png: tikz2png example.tex
	./tikz2png -i example.tex --border=0 -o $@

example4.png: tikz2png example.tex
	./tikz2png -i example.tex --border=0 --background=blue -o $@

example5.png: tikz2png example.tex
	./tikz2png --quality 100 -i example.tex -o $@
