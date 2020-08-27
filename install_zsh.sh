sudo apt install zsh -y
zsh --version
sudo groupadd chsh
sudo usermod -a -G chsh $USER

sudo sed -i '1s/^/auth       sufficient   pam_wheel.so trust group=chsh\n\n/' /etc/pam.d/chsh

getent passwd $USER
chsh -s $(which zsh)
getent passwd $USER

prompt adam2

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  "" --unattended && \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/denysdovhan/spaceship-prompt.git $ZSH_CUSTOM/themes/spaceship-prompt && ln -s $ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme $ZSH_CUSTOM/themes/spaceship.zsh-theme

rm ~/.zshrc
cp ./zshrc ~/.zshrc
cp ./.aliases ~/.aliases
cp ./.functions ~/.functions
