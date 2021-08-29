SHELL := /usr/bin/bash
.ONESHELL:

.PHONY: dev
dev: check-ruby-version
	bundle exec jekyll serve --unpublished --future --drafts

.PHONY: live
live: check-ruby-version
	bundle exec jekyll serve

.PHONY: check-ruby-version
check-ruby-version:
	@ruby -v | grep -q '2.7.2' || { echo "ERROR: incorrect ruby version. fix this with 'rvm use 2.7.2'" >&2; exit 1; }