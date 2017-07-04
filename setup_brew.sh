# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating homebrew ..."
  brew update
  brew upgrade --all
fi
brew doctor
# brew tap homebrew/dupes