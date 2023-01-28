#! /bin/bash
sudo snap install code --classic
sudo snap install arduino p7zip-desktop spotify vlc chromium joplin-desktop thunderbird brave
sudo apt install calibre i3 -y

# i3 config
mkdir -p ~/.config/i3
cp ./dotfiles/i3/config ~/.config/i3/