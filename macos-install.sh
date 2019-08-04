#!/usr/bin/env bash





# user input
#
#####

echo "Enter user full name (for git):"
read USER_FULL_NAME
echo "Enter user email (for git):"
read USER_EMAIL

echo full name is ${USER_FULL_NAME}
echo email is ${USER_EMAIL}

while true; do
    echo "Confirm the inputs are correct [YyNn]?"
    read yn
    case $yn in
        [Yy]* ) echo Will proceed now...; break;;
        [Nn]* ) return;;
        * ) echo "Please answer yes or no.";;
    esac
done






# config git
#
##### 

echo "INFO: setting git..."

# Set git to use the osxkeychain credential helper
git config --global credential.helper osxkeychain

# Set merge tool to vscode
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd 'code --wait $MERGED'
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'

# Setup user name and email
git config --global user.name ${USER_FULL_NAME}
git config --global user.email ${USER_EMAIL}







# command line installation
#
#####

# install brew silently. See https://brew.sh
# the last "</dev/null" is to silent install prompt, see https://stackoverflow.com/a/25535532
printf "INFO: installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null

# pyenv is config in zsh script (beautify-terminal)
brew install pyenv node






# GUI software installation
#
#####

# install GUI apps
brew tap caskroom/cask
brew cask install google-chrome visual-studio-code google-drive-file-stream wechat






# Reference
#
#####

# Just for macOS Mojave: pip might not work, use this solution to fix:
# https://github.com/Homebrew/homebrew-core/issues/29176#issuecomment-398656987
# brew udpate && sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
# brew install \
# https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb \
# node
