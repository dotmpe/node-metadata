# Id: nodelib/0.0.5-dev-f-component-metadata+20150716-2341 Rules.nodelib.mk

include $(DIR)/Rules.git-versioning.shared.mk

# special rule targets
STRGT += \
   usage \
   install \
   update \
   nodelib-test \
   build

DEFAULT := usage
empty :=
space := $(empty) $(empty)
usage:
	@echo 'usage:'
	@echo '# npm [info|update|test]'
	@echo '# make [$(subst $(space),|,$(STRGTS))]'

install::
	npm install

nodelib-test:
	grunt lint test

TEST += nodelib-test

update:
	./bin/cli-version.sh update
	npm update

build:: TODO.list

TODO.list: Makefile bin/ lib/ src/ test/ tools/  ReadMe.rst reader.rst package.yaml Sitefile.yaml
	grep -srI 'TODO\|FIXME\|XXX' $^ | grep -v 'grep..srI..TODO' | grep -v 'TODO.list' > $@


