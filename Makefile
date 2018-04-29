build:
	rm -rf *.gem
	gem build *.gemspec

install:
	gem install ./*.gem

irb:
	./bin/console

test:
	rake spec