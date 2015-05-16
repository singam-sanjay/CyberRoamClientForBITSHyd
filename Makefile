
install:
	bash install.sh

setup:
	bash exec.sh

run:    setup
	./exec.sh

.PHONY: install setup
