SHELL = /bin/sh

all: build

build:
	latexmk -cd -silent -pdflatex="pdflatex -interaction=nonstopmode -synctex=1 %S %O" -f -pdf selvdeklarasjon.tex
