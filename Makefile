.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
PROJECT=sh-hutil
VERSION=1.0.3
PREFIX=/usr/local
all:
clean:
install:
check:

## -- BLOCK:license --
install: install-license
install-license: README.md LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/hfile $(DESTDIR)$(PREFIX)/bin
	cp bin/ecode $(DESTDIR)$(PREFIX)/bin
	cp bin/hterm $(DESTDIR)$(PREFIX)/bin
	cp bin/hcfg $(DESTDIR)$(PREFIX)/bin
	cp bin/hsh $(DESTDIR)$(PREFIX)/bin
	cp bin/hlog $(DESTDIR)$(PREFIX)/bin
	cp bin/hmain $(DESTDIR)$(PREFIX)/bin
	cp bin/vcd $(DESTDIR)$(PREFIX)/bin
	cp bin/hopen $(DESTDIR)$(PREFIX)/bin
	cp bin/hremote $(DESTDIR)$(PREFIX)/bin
	cp bin/lrun $(DESTDIR)$(PREFIX)/bin
	cp bin/vrun $(DESTDIR)$(PREFIX)/bin
	cp bin/huname $(DESTDIR)$(PREFIX)/bin
	cp bin/urlcut $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
