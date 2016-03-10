all:
	$(MAKE) copymd copybib generate copypdf

copymd:
	cp src/*.md out/

copybib:
	cp src/*.bib out/

generate:
	cd out && $(MAKE) clean && $(MAKE)

copypdf:
	cp out/essay.pdf .

