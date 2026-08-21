PREFIX=/opt/xnuports

all:
	swift build --disable-sandbox -c release --arch arm64
	mkdir -p build/bin
	cp .build/arm64-apple-macosx/release/xcrmint build/bin/xcrmint

install:
	mkdir -p "$(PREFIX)/bin"
	cp -f .build/apple/Products/Release/xcrmint "$(PREFIX)/bin"

format:
	swift package _format

clean:
	rm -rf .build
	rm -rf build

.PHONY: all install format clean
