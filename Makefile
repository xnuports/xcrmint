PREFIX=/opt/xnuports

all:
	swift build --disable-sandbox -c release --arch arm64
	mkdir -p build/bin
	cp .build/arm64-apple-macosx/release/xcrmint build/bin/xcrmint
	cp LICENSE build/LICENSE
	cp LICENSE.MIT build/LICENSE.MIT
	cp LICENSE.BSD-3 build/LICENSE.BSD-3
	cp README.md build/README.md

install:
	mkdir -p "$(PREFIX)/bin"
	cp -f .build/apple/Products/Release/xcrmint "$(PREFIX)/bin"

format:
	swift package _format

clean:
	rm -rf .build
	rm -rf build

.PHONY: all install format clean
