#!/bin/bash
set -e

echo "Building Jekyll site..."
bundle exec jekyll build

echo "Rebuilding search index..."
npx pagefind --site _site

echo "Done! Output in _site/"
