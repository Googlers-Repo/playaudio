CXXFLAGS += -Wall -Wextra -Werror -std=c++14 -fno-exceptions -pie
LDFLAGS += -lOpenSLES
PREFIX ?= /usr/local

playaudio: playaudio.cpp

clean:
	rm -f playaudio

install: playaudio
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1 $(DESTDIR)$(PREFIX)/bin
	install playaudio $(DESTDIR)$(PREFIX)/bin/playaudio
	install playaudio.1 $(DESTDIR)$(PREFIX)/share/man/man1/playaudio.1

uninstall:
	rm -f $(PREFIX)/bin/playaudio $(PREFIX)/share/man/man1/playaudio.1

.PHONY: clean install uninstall
