#! /bin/bash
sudo apt install neovim zsh git tmux httpie nautilus -y
sudo snap install go --classic
sudo snap install node --classic
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# zsh as defaul shell
echo 'exec zsh' >> ~/.bashrc

# zsh auto-complete
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
rm ~/.zshrc
cp ./dotfiles/zsh/.zshrc ~/

# nvim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# nvim config
mkdir ~/.config/nvim
cp ./dotfiles/nvim/init.vim ~/.config/nvim/
echo 'still need to install vim plugins'