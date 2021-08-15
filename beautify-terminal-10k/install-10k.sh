# echo -e "INFO: Installing iterm2..." && \
# brew cask install iterm2

REPO_ROOT=$(git rev-parse --show-toplevel)

# 1. install zsh (macos may already have this)
# 2. install oh-my-zsh (for useful cli alias): https://github.com/ohmyzsh/ohmyzsh
echo -e "INFO: Installing Oh my Zsh framework..." && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# zsh syntax-highlighting - let shell commands keywords be recognized and displayed in green, etc
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh autosuggestions (grayed-out words hinting you)
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# 3. install powerlevel10K (for beautiful strip, etc)
echo -e "INFO: Installing powerlevel10K..." && \
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo -e "INFO: Installing powerlevel10K and Zsh config..." && \
cat base-prefix.zshrc | cat - ~/.zshrc > temp && mv temp ~/.zshrc && \
cat base-suffix.zshrc >> ~/.zshrc

echo -e "INFO: Installing fonts..." && \
cp fonts/* ~/Library/Fonts

echo -e "INFO: Making 10K the default MacOS terminal profile..."
# osascript -e 'tell app "Terminal" to shut down'
open ${REPO_ROOT}/beautify-terminal-10k/10K.terminal && \
sleep 2 && \
defaults write com.apple.terminal "Default Window Settings" "10K" && \
defaults write com.apple.terminal "Startup Window Settings" "10K" && \
sleep 1 && \
osascript -e 'quit app "Terminal"'
# Or automatically force quick by below - but existing Terminal will get closed, problematic especially user run this script by Terminal
# pkill -x Terminal
