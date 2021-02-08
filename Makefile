#
# gemfileは make build で生成される
# lib/episopass/version.rb の数字を増やして make push すると rubygems.org に登録される
#

install: build
	sudo gem install episopass-`ruby -e 'require "./lib/episopass.rb"; puts EpisoPass::VERSION'`.gem

build: Gemfile.lock
	gem build episopass.gemspec

push: build
	gem push episopass-`ruby -e 'require "./lib/episopass.rb"; puts EpisoPass::VERSION'`.gem

Gemfile.lock: Gemfile
	bunele install
