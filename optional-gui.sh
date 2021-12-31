# GUIs

set -e

if [ "${PASSWORD}" == "" ]; then
   echo "Please provide your sudo password to install GUI apps:"
   read -s PASSWORD
fi

echo ${PASSWORD} | brew install --cask slack google-drive zoom google-chrome
# Pin Sketch version 72.4 to use it free
curl -L https://raw.githubusercontent.com/Homebrew/homebrew-cask/bf85486d8a5aa60cdc0622809e81d61ea43841ff/Casks/sketch.rb > sketch.rb
echo ${PASSWORD} | brew install --cask ./sketch.rb
rm sketch.rb

# M1 not supported
# brew install --cask skype docker

# Optional
# brew install --cask imageoptim # effective image compression
# brew install --cask mongodb-compass-community
# brew install --cask sequel-pro-nightly
# brew install --cask datagrip

# Optional CLIs
# brew install --cask ngrok
# brew install --cask java8
