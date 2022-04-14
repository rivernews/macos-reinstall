
################################
#         SUFFIX SETUP         #
################################

##### Zsh customization
# have to put here at suffix because default .zshrc defined ZSH_THEME, we want to overwrite it.
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  vscode
)

# $ZSH var will be added to .zshrc the first time when oh-my-zsh is installed
source $ZSH/oh-my-zsh.sh

export EDITOR='code'


################################
#      BASH CUSTOM EXPORT      #
################################


# mysql
#export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"


# golang
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin


# google cloud sdk
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'


# kubectl: add autocomplete permanently to your zsh shell
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -s "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
#
# common nvm commands:
# nvm ls -> local installed versions
# nvm ls-remote (--lts) -> available versions to install
#
# to let nvm auto detect local version:
# https://github.com/nvm-sh/nvm#zsh
#
# install a version: `nvm install Erbium`, or `nvm install 12.19.0`
# you may set the default node to latest installed version: `nvm alias default node`


# gitignore download command
function gitignore() { curl -sLw "\n" https://www.gitignore.io/api/$@ ;}


################################
#   END BASH CUSTOM EXPORT     #
################################


# pyenv config: https://github.com/pyenv/pyenv#homebrew-on-macos
# this block needs to be place at the end of shell config because it changes PATH
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi
# Pyenv guide:
#
# INSTALL A PYTHON VERSION FISRST
#
# show all available python versions to install: pyenv install -list
# install a specific version of python e.g. 3.4.0 (you have to specify all the sub-version numbers): pyenv install 3.4.0
#
# SET VERSIONS TO USE
#
# show global python: pyenv global
# set global python to python3.4.0: pyenv global 3.4.0
# set local python to python3.4.0: pyenv local 3.4.0
#
# RESTART TERMINAL TO APPLY THE CHANGE
#
# If you got issues installing Python in macOS Big Sur,
# try out this article:
# https://qiita.com/craymaru/items/58e92fac99b5b0ec778f
