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
	install -d $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	install -c -m 644 README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hfile $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/ecode $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hterm $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hcfg $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hlog $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hmain $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/vcd $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hopen $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/hremote $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/lrun $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/vrun $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/huname $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/urlcut $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
