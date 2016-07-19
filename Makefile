
SOURCES = \
	README.txt \
	bootstrap.js \
	chrome.manifest \
	groups.jsm \
	install.rdf \
	multiselect.jsm \
	options.xul \
	override-bindings.css \
	skin/base.css \
	skin/bindings.css \
	skin/groups.xml \
	skin/linux/linux.css \
	skin/osx/closetab-white.png \
	skin/osx/closetab.png \
	skin/osx/dropmarker.png \
	skin/osx/osx.css \
	skin/osx/twisty.png \
	skin/win/dropmarker.png \
	skin/win/twisty-collapsed.png \
	skin/win/twisty.png \
	skin/win/win.css \
	tabdatastore.jsm \
	utils.js \
	vertical-tabbrowser.xml \
	verticaltabs.jsm \
	$(NULL)

all: release.xpi

release.xpi: $(SOURCES)
	rm -f $@
	zip -9r $@ $(SOURCES)
