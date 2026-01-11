.PHONY: default all

default: all

all:
	stow --verbose=2 --target=$$HOME --restow core
	stow --verbose=2 --target=$$HOME --restow editor
