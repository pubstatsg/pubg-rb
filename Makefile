build:
	rm -rf *.gem
	gem build *.gemspec

install: build
	gem install ./*.gem

console:
	./bin/console

setup:
	./bin/setup

test:
	rake spec

release:
	bundle exec rake release