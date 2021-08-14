# GUIs

if [ "${PASSWORD}" == "" ]; then
   echo "Please provide your sudo password to install GUI apps:"
   read PASSWORD
fi

echo ${PASSWORD} | brew install --cask slack google-drive
# Pin Sketch version 72.4 to use it free
echo ${PASSWORD} | brew install --cask https://github.com/Homebrew/homebrew-cask/blob/bf85486d8a5aa60cdc0622809e81d61ea43841ff/Casks/sketch.rb

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
