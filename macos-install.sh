#!/usr/bin/env bash



set -e

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
# This will let git remember your credential after you input credentials for the first time
git config --global credential.helper osxkeychain
# git config --global credential.username "github username"

# Set merge tool to vscode
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd 'code --wait $MERGED'
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'

# set core git editor to use vsc
# https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-commits/
# this assumes that vsc is added to $PATH, and you can run `code <file or direoctory>` in terminal
# if you install vsc by brew cask, this should already be done for you; otherwise, you'll have to setup $PATH first before the following line take effect
git config --global core.editor "code --wait"

# Setup user name and email
git config --global user.name ${USER_FULL_NAME}
git config --global user.email ${USER_EMAIL}







# command line installation
#
#####

# install brew silently. See https://brew.sh
# the last "</dev/null" is to silent install prompt, see https://stackoverflow.com/a/25535532
printf "INFO: installing brew..."
export CI=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# pyenv is config in zsh script (beautify-terminal)
brew install pyenv
# brew install nvm # nvm officially discourage the use of homebrew to install it, so will comment out here. Refer to nvm official site to see what's the better way to install it
# something like:
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash





# GUI software installation
#
#####

# install GUI apps
# brew tap caskroom/cask # no longer need to tap cask, can just use `brew cask` directly: https://stackoverflow.com/questions/58335410/error-caskroom-cask-was-moved-tap-homebrew-cask-cask-instead/58337898#58337898
brew install --cask visual-studio-code
# to adapt to M1, be careful about the version of GUI app below, and better to refer to homebrew cask to make sure they are M1 support first.
# brew install --cask docker google-chrome visual-studio-code google-drive-file-stream wechat





# Reference
#
#####

# Just for macOS Mojave: pip might not work, use this solution to fix:
# https://github.com/Homebrew/homebrew-core/issues/29176#issuecomment-398656987
# brew udpate && sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
# brew install \
# https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb \
# node
