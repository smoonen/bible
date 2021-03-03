all : modules html

modules : modules/texts/rawtext/scm/nt

html : html/index.html

modules/texts/rawtext/scm/nt : bible.xml
	/Applications/Eloquent.app/Contents/Resources/bin/osis2mod modules/texts/rawtext/scm bible.xml

html/index.html : bible.xml
	. ../osis2html/bin/activate && ../osis2html/osis2html.py bible.xml html

