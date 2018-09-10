




################################
#         SUFFIX SETUP         #
################################

plugins=(
  git
  zsh-autosuggestions
  vscode
)

source $ZSH/oh-my-zsh.sh

# prevent percentage sign at top in vscode. See https://github.com/zeit/hyper/issues/2144
unsetopt PROMPT_SP