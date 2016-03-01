SHELL = /bin/sh

all: build test

build:
	latexmk -cd -silent -pdflatex="pdflatex -interaction=nonstopmode -synctex=1 %S %O" -f -pdf selvdeklarasjon/selvdeklarasjon.tex

test:
	xmllint --noout --schema SUTI_2016_MessageXSD.xsd */*.xml
	xmllint --noout --schema SUTI_2016_Pasientreiser_Oppgjor.xsd */*.xml
	xmllint --noout --schema SUTI_2016_Pasientreiser_Oppgjor_strict.xsd */*.xml

