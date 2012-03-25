all: ab-roman.png ab.png favicon.ico

clean:;	rm -f *.png *.ico *.pdf

ab-roman.pdf:	ab-roman.svg
	inkscape -z -f ab-roman.svg --export-pdf=ab-roman.pdf

ab-roman.png:	ab-roman.pdf
	inkscape -z -f ab-roman.pdf --export-png=ab-roman.png

favicon.ico:	ab-roman.png
	convert ab-roman.png -resize 256x256 -transparent white favicon-256.png
	convert favicon-256.png -resize 16x16 favicon-16.png
	convert favicon-256.png -resize 32x32 favicon-32.png
	convert favicon-256.png -resize 64x64 favicon-64.png
	convert favicon-16.png favicon-32.png favicon-64.png favicon-256.png -colors 16 favicon.ico

ab.pdf:	ab.svg
	inkscape -z -f ab.svg --export-pdf=ab.pdf

ab.png:	ab.pdf
	inkscape -z -f ab.pdf --export-png=ab.png

