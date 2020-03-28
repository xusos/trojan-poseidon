.PHONY: install
install:
	npm i docsify-cli -g

.PHONY: preview
preview:
	docsify serve docs
