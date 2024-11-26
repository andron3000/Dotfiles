# Setup Instructions

## 1. Install required apps:
sudo dnf5 install -y git stow cliphist swaync waybar hyprpaper hypridle warp-terminal wofi

## 2. Generate personal ssh-key and add it to the Github account:
ssh-keygen -t ed25519 -C "chekhovych1995@gmail.com"
Double check id_personal.pub file existance in ~/.ssh folder.

## 3. Clone Dotfiles repo into home directory: /home/chekhovych/Dotfiles
git clone git@github.com:andron3000/Dotfiles.git

## 4. Bash changes:
rm -rf ~/.bashrc
stow bashrc

## 5. Wofi changes:
rm -rf ~/.config/wofi
stow wofi

## 6. Nvim changes:
rm -rf ~/.config/nvim
stow nvim

## 7. Swaync changes:
rm -rf ~/.config/swaync
stow swaync

## 8. Waybar changes:
rm -rf ~/.config/waybar
stow waybar

## 9. Hyperland changes(log in under Gnome):
rm -rf ~/.config/hypr
stow hypr
