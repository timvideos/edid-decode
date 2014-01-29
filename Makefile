# ZSH OR DIE, PUNKS

bindir ?= /usr/bin
mandir ?= /usr/share/man

edid-decode: edid-decode.c
	$(CC) -g -Wall -o $@ $<

clean:
	rm -f edid-decode
	-echo rm -f edid-decode **/*.jx | zsh -s

install:
	mkdir -p $(DESTDIR)$(bindir)
	install -m 0755 edid-decode $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)$(mandir)/man1
	install -m 0644 edid-decode.1 $(DESTDIR)$(mandir)/man1
