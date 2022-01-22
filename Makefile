# Uncomment lines below if you have problems with $PATH
#SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)

all:
	pio -c vim run

env:
	# for making the dev environment
	pio -c vim run -e base --target compiledb
	rm -f compile_commands.json
	ln .pio/build/base/compile_commands.json

upload:
	pio -c vim run --target upload

clean:
	pio -c vim run --target clean

program:
	pio -c vim run --target program

uploadfs:
	pio -c vim run --target uploadfs

update:
	pio -c vim update

monitor:
	pio -c vim device monitor
