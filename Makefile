all: build

.PHONY: build test

LIB_SOURCES: $(wildcard */*.dylan) \
	$(wildcard */*.lid)

REGISTRIES = `pwd`/registry:`pwd`/ext/calvino/registry

build: $(LIB_SOURCES)
	OPEN_DYLAN_USER_REGISTRIES=$(REGISTRIES) dylan-compiler -build calvino-examples

clean:
	rm -rf _build
