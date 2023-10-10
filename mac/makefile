compile:
	yq hyperijkl.yml -o=json > hyperijkl.json

install: compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp HyperIJKL.json $$HOME/.config/karabiner/assets/complex_modifications/

all: install
	./create_default_key_bindings.sh

.PHONY: compile,install,all
