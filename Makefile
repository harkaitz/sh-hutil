DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-hutil
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-hutil
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/lrun bin/xfilter bin/hlog bin/vrun bin/hget bin/hurl bin/vcd bin/hfile bin/hstr bin/hterm bin/hrand bin/hmenu bin/hbc bin/ecode bin/hper bin/hpkg bin/findup bin/hcfg bin/hextract bin/hmain bin/pathinfo bin/hsh  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
