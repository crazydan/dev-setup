#!/usr/bin/env bash

# Install Atom plugin tools using command line.

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Check for Atom,
# Install if we don't have it
if test ! $(which atom); then
  echo "Installing Atom..."
  brew cask install --appdir="/Applications" atom
fi

# Core
apm install auto-update-packages

# Linters
apm install linter
apm install linter-ui-default
apm install intentions
apm install busy-signal
apm install linter-manager
apm install linter-eslint
apm install linter-sass-lint
apm install linter-stylus
apm install linter-stylint
apm install linter-tidy
apm install linter-handlebars
apm install linter-js-yaml
apm install linter-jsonlint
apm install linter-markdown
apm install linter-package-json-validator
apm install linter-xmllint

# Beautifier
apm install pretty-json
apm install atom-beautify

# Coding
apm install highlight-selected
apm install autocomplete-paths

# UI
apm install file-icons
apm install minimap
apm install minimap-highlight-selected
apm install open-recent
apm install zen
apm install fonts

# HTML
#apm install emmet
apm install pigments
apm install stylus
apm install atom-handlebars
apm install autoclose-html
apm install color-picker

# Languages
apm install atom-ternjs
apm install cucumber
apm install es6-javascript
apm install language-csv
apm install language-docker
apm install language-fastbuild
apm install language-groovy
apm install language-nginx

# Git
apm install git-blame
#apm install git-plus
#apm install git-time-machine
#apm install merge-conflicts

# IDE
#apm install project-manager
#apm install bottom-dock
apm install intellij-idea-keymap
apm install local-history
apm install set-syntax
apm install sort-lines
apm install todo-show

# Remove outdated versions from the cellar.
brew cleanup
