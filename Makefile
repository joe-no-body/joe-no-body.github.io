serve-unpublished:
	bundle exec jekyll serve --unpublished --future

live: serve-published
serve-published:
	bundle exec jekyll serve