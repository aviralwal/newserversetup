# Install zsh
echo "Installing zsh"
sudo yum install -y zsh

echo "installing chsh"
sudo yum install -y util-linux-user
sudo chsh -s $(which zsh) $(whoami)
echo "Terminal is changed for user: " $(whoami)	
echo "To change for other users, run the command sudo chsh -s \$(which zsh) (username)"

echo "Installing oh-my-zsh for " $(whoami)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing oh-my-zsh plugins - nvm, autosuggestions and syntax-highlighting"
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/lukechilds/zsh-better-npm-completion ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-better-npm-completion
echo "Add the followinf plugin in the file ~/.zshrc :- plugins=([plugins...] zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)"

echo 'plugins+=(zsh-better-npm-completion zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc
echo 'export TERM="xterm-256color"' >> ~/.zshrc
echo 'alias gpull="git pull"' >> ~/.zshrc
echo 'alias gpush="git push"' >> ~/.zshrc
echo 'alias gstatus="git status"' >> ~/.zshrc
echo 'alias gstash="git stash"' >> ~/.zshrc
echo 'alias ta="tmux a -t"' >> ~/.zshrc
echo 'alias t="tmux"' >> ~/.zshrc

echo "Copying the bullet train theme"
cp bullet-train.zsh-theme ~/.oh-my-zsh/themes
