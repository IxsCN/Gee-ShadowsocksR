NAME := ShadowsocksR

app_tarball:= $(NAME).tgz

all: clean files
	tar --exclude-vcs -zcvf $(app_tarball) files.tgz manifest.json script
	rm -f files.tgz
files:
	tar --exclude-vcs -zcvf files.tgz bin config
clean:
	rm -f *.tgz
