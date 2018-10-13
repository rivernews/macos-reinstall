




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