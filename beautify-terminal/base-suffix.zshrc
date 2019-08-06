




################################
#         SUFFIX SETUP         #
################################

##### Zsh customization
# have to put here at suffix because default .zshrc defined ZSH_THEME, we want to overwrite it.
ZSH_THEME="powerlevel9k/powerlevel9k" 

plugins=(
  git
  zsh-autosuggestions
  vscode
)

source $ZSH/oh-my-zsh.sh

# prevent percentage sign at top in vscode. See https://github.com/zeit/hyper/issues/2144
unsetopt PROMPT_SP

##### Oh My Zsh Setup End #####





################################
#     BASH CUSTOME EXPORT      #
################################

# mysql
#export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# pyenv config: https://github.com/pyenv/pyenv#homebrew-on-macos
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# golang
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin

# google cloud sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
