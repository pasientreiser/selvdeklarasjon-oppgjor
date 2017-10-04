SHELL = /bin/sh

all: test

test:
	xmllint --noout --schema SUTI_2016_MessageXSD.xsd */*.xml
	xmllint --noout --schema SUTI_2016_Pasientreiser_Oppgjor_strict.xsd */*.xml
