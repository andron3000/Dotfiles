# Setup Instructions

![2024-11-30-160905_hyprshot](https://github.com/user-attachments/assets/525d6004-a27f-41de-baf3-c961bb1d36f1)

![2024-11-30-160319_hyprshot](https://github.com/user-attachments/assets/c2a715d8-5823-437b-bd6a-cea5085d143e)

## 1. Install required apps:

`sudo dnf5 install -y git stow keychain cliphist swaync waybar hyprpaper hypridle hyprlock hyprshot warp-terminal wofi nvim pipewire wireplumber qt6-qtwayland`

<b>Google Chrome:</b>

`flatpak install flathub com.google.Chrome`

<b>Telegram:</b>

`flatpak install flathub org.telegram.desktop`

<b>Viber:</b>

`flatpak install flathub com.viber.Viber`

<b>VSCodium:</b>

`flatpak install flathub com.vscodium.codium`

<b>Slack:</b>

`flatpak install flathub com.slack.Slack`

<b>Thunderbird:</b>

`flatpak install flathub org.mozilla.Thunderbird`

<b>ExtensionManager:</b>

`flatpak install flathub com.mattjakeman.ExtensionManager`

<b>Flatseal:</b>

`flatpak install flathub com.github.tchx84.Flatseal`

<b>Bitwarden:</b>

`flatpak install flathub com.bitwarden.desktop`

<b>Postman:</b>

`flatpak install flathub com.getpostman.Postman`

<b>Skype:</b>

`flatpak install flathub com.skype.Client`

<b>Solaar:</b>

`flatpak install flathub io.github.pwr_solaar.solaar`

<b>OnlyOffice:</b>

`flatpak install flathub org.onlyoffice.desktopeditors`

Download and install: Ubuntu Nerd Fonts pack:

`https://www.nerdfonts.com/font-downloads`

## 2. Generate personal ssh-key and add it to the Github account:

`ssh-keygen -t ed25519 -C "chekhovych1995@gmail.com"`

Double check id_personal.pub file existance in ~/.ssh folder.

## 3. Clone Dotfiles repo into home directory: /home/chekhovych/Dotfiles

`git clone git@github.com:andron3000/Dotfiles.git`

## 4. Bash changes:

rm -rf ~/.bashrc
cd ~/Dotfiles \
stow bashrc

## 5. Wofi changes:

rm -rf ~/.config/wofi \
cd ~/Dotfiles \
stow wofi

## 6. Nvim changes:

rm -rf ~/.config/nvim \
cd ~/Dotfiles \
stow nvim

## 7. Swaync changes:

rm -rf ~/.config/swaync \
cd ~/Dotfiles \
stow swaync

## 8. Waybar changes:

rm -rf ~/.config/waybar \
cd ~/Dotfiles \
stow waybar

## 9. Hyperland changes(log in under Gnome):

rm -rf ~/.config/hypr \
cd ~/Dotfiles \
stow hypr
