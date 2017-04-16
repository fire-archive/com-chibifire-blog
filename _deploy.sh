#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "ernest.lee@chibifire.com"
git config --global user.name "K. S. Ernest (iFire) Lee"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git Documentation
cd Documentation
rm -rf *
touch .nojekyll
cp -r ../_book/* ./
mv bookdown-index.html to index.html
git add -A
git commit -m"Update the book" || true
git push -q origin gh-pages
