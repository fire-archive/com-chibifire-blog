# Chibifire.com's Blog

This is a rmarkdown site for https://chibifire.com.

## Install

```bash
# assume you have initialized the git repository,
# and are under the directory of the book repository now

# create a branch named gh-pages and clean up everything
git checkout --orphan gh-pages
git rm -rf .

# create a hidden file .nojekyll
touch .nojekyll
git add .nojekyll

git commit -m"Initial commit"
git push origin gh-pages
```

```bash
gem install travis
# Generate your token
# Give it repo permissions
# Replace your_token with the token
TOKEN=your_token travis encrypt GITHUB_PAT=$TOKEN
```
