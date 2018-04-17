PREFIX?=/usr/local

INSTALL_DIRS=`find share -type d 2>/dev/null`
INSTALL_FILES=`find share -type f 2>/dev/null`

test:
	SHELL=`command -v bash` ./test/runner 2>/dev/null
	SHELL=`command -v zsh` ./test/runner

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $$dir $(DESTDIR)$(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(DESTDIR)$(PREFIX)/$$file; done

uninstall:
	for file in $(INSTALL_FILES); do rm -f $(DESTDIR)$(PREFIX)/$$file; done


.PHONY: install test uninstall
