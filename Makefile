PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1

SRC = src/fossil
MAN = man/fossil.1

install:
	@echo "Installazione di fossil da $(SRC) in $(BINDIR)..."
	install -Dm755 $(SRC) $(DESTDIR)$(BINDIR)/fossil
	@echo "Installazione del manuale da $(MAN) in $(MANDIR)..."
	install -Dm644 $(MAN) $(DESTDIR)$(MANDIR)/fossil.1
	@echo "------------------------------------------------"
	@echo "fossil (ufficio-utils) installato con successo."

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/fossil
	rm -f $(DESTDIR)$(MANDIR)/fossil.1

.PHONY: install uninstall
