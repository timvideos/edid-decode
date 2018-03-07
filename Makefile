bindir ?= /usr/bin
mandir ?= /usr/share/man

edid-decode: edid-decode.c
	$(CC) $(CFLAGS) $(LDFLAGS) -g -Wall -o $@ $< -lm

clean:
	rm -f edid-decode

install:
	mkdir -p $(DESTDIR)$(bindir)
	install -m 0755 edid-decode $(DESTDIR)$(bindir)
	mkdir -p $(DESTDIR)$(mandir)/man1
	install -m 0644 edid-decode.1 $(DESTDIR)$(mandir)/man1
