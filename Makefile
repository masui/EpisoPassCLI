install: build
	sudo gem install episopass-`ruby -e 'require "./lib/episopass.rb"; puts EpisoPass::VERSION'`.gem

build:
	gem build episopass.gemspec

# lib/episopass/version.rb を更新してからrubygems.orgにpush
push: build
	gem push episopass-`ruby -e 'require "./lib/episopass.rb"; puts EpisoPass::VERSION'`.gem

