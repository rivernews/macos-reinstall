# refer to https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961





# 1. Install and configure iTerm2
echo -e "INFO: Installing iterm2..." && \
brew cask install iterm2 && \

echo -e "INFO: Follow the web article we opened for you, import the color scheme in iTerm2. After you finish, don't close iTerm2, we'll use it again later." && \
open "https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961" && \
read -n 1 -s -r -p "INFO: Press any key to continue...\n" key_pressed && \
# -n defines the required character count to stop reading
# -s hides the user's input
# -r causes the string to be interpreted "raw" (without considering backslash escapes)





# 2. Install a patched font
echo -e "INFO: Installing patched font..." && \
cp "Meslo LG M Regular for Powerline.ttf" ~/Library/Fonts && \

echo -e "INFO: Set the font 'Meslo LG M Regular for Powerline' in iTerm2" && \
read -n 1 -s -r -p "INFO: Press any key to continue...\n" key_pressed && \





# 3. Install Zsh, Oh my Zsh and Syntax highlighting
echo -e "INFO: Installing Zsh and Syntax highlighting..." && \
brew install zsh zsh-completions zsh-syntax-highlighting && \

# Install Oh my Zsh framework
echo -e "INFO: Installing Oh my Zsh framework..." && \
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \





# 4. Add Powerlevel9k Zsh Theme
echo -e "INFO: Installing Powerlevel9k Zsh Theme..." && \
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k && \

echo -e "INFO: Installing Zsh config..." && \
cat base-prefix.zshrc | cat - ~/.zshrc > temp && mv temp ~/.zshrc && \
cat base-suffix.zshrc >> ~/.zshrc





# 5. Final tweaking
# Enable text editor navigation
echo -e "INFO: Set Vertical cursor and Text navigation with keyboard in iTerm2" && \
read -n 1 -s -r -p "INFO: Press any key to continue...\n" key_pressed && \

# Auto suggestions (for Oh My Zsh)
echo -e "INFO: Installing Auto suggestions (for Oh My Zsh)..."
if [[ -z "$ZSH_CUSTOM" ]]
then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi





# 6. Visual Studio Code config
echo -e 'INFO: Set vscode "terminal.integrated.fontFamily": "Meslo LG M for Powerline"' && \
read -n 1 -s -r -p "INFO: Press any key to continue...\n" key_pressed && \

echo "INFO: SUCCESS." && return 

echo "ERROR: Failed, see message above."