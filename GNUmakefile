PROJECT=sh-hutil
VERSION=1.0.3
PREFIX=/usr/local
all:
clean:
install:

## -- BLOCK:license --
install: install-license
install-license: 
	install -D -t $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT) LICENSE
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/rsetup           $(DESTDIR)$(PREFIX)/bin
	cp bin/hfile            $(DESTDIR)$(PREFIX)/bin
	cp bin/hremote          $(DESTDIR)$(PREFIX)/bin
	cp bin/hterm            $(DESTDIR)$(PREFIX)/bin
	cp bin/hopen            $(DESTDIR)$(PREFIX)/bin
	cp bin/hsh              $(DESTDIR)$(PREFIX)/bin
	cp bin/ecode            $(DESTDIR)$(PREFIX)/bin
	cp bin/huname           $(DESTDIR)$(PREFIX)/bin
	cp bin/hmain            $(DESTDIR)$(PREFIX)/bin
	cp bin/urlcut           $(DESTDIR)$(PREFIX)/bin
	cp bin/hcfg             $(DESTDIR)$(PREFIX)/bin
	cp bin/vcd              $(DESTDIR)$(PREFIX)/bin
	cp bin/lrun             $(DESTDIR)$(PREFIX)/bin
	cp bin/hlog             $(DESTDIR)$(PREFIX)/bin
	cp bin/vrun             $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
