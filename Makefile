.PHONY: all
all: install

.PHONY: dependencies
dependencies:
	bundle install

.PHONY: install
install: dependencies
