CC = gcc
LDFLAGS = -lImlib2 -lX11
CFLAGS ?= -O2 -s
#CFLAGS ?= -ggdb -g3 # For debugging

all: xlunch

install: xlunch
	mkdir -p $(DESTDIR)/usr/bin/
	cp xlunch $(DESTDIR)/usr/bin
	cp extra/gentriesquick $(DESTDIR)/usr/bin/xlunch_genquick
	mkdir -p $(DESTDIR)/usr/share/icons/hicolor/48x48/apps/
	cp extra/ghost.png $(DESTDIR)/usr/share/icons/hicolor/48x48/apps/xlunch_ghost.png
	mkdir -p  $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/
	cp slax/logout.png $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/logout.png
	cp slax/restart.png $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/restart.png
	cp slax/shutdown.png $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/shutdown.png
	mkdir -p $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/
	cp slax/chromium-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/chromium-flux.png
	cp slax/terminal-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/terminal-flux.png
	cp slax/firefox-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/firefox-flux.png
	cp slax/installer-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/installer-flux.png
	cp slax/configurator-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/configurator-flux.png
	cp slax/calculator-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/calculator-flux.png
	cp slax/editor-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/editor-flux.png
	cp slax/videoplayer-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/videoplayer-flux.png
	cp slax/preferences-system-network-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/preferences-system-network-flux.png
	cp slax/system-file-manager-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/system-file-manager-flux.png
	cp slax/utilities-system-monitor-flux.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/utilities-system-monitor-flux.png
	cp slax/xlunch_highlight.png $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/xlunch_highlight.png
	mkdir -p $(DESTDIR)/etc/xlunch
	cp slax/entries.dsv $(DESTDIR)/etc/xlunch/entries.dsv
	cp slax/logout.dsv $(DESTDIR)/etc/xlunch/logout.dsv

remove:
	rm $(DESTDIR)/usr/bin/xlunch
	rm $(DESTDIR)/usr/bin/xlunch_genquick
	rm $(DESTDIR)/usr/share/icons/hicolor/48x48/apps/xlunch_ghost.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/logout.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/restart.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/actions/shutdown.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/chromium-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/terminal-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/firefox-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/installer-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/configurator-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/calculator-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/editor-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/videoplayer-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/preferences-system-network-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/system-file-manager-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/utilities-system-monitor-flux.png
	rm $(DESTDIR)/usr/share/icons/hicolor/128x128/apps/xlunch_highlight.png
	rm $(DESTDIR)/etc/xlunch/entries.dsv
	rm $(DESTDIR)/etc/xlunch/logout.dsv

xlunch: xlunch.c
	$(CC) xlunch.c -o xlunch $(LDFLAGS) $(CFLAGS)

clean:
	rm -f xlunch
