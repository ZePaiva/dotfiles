sudo dnf copr enable solopasha/hyprland 
hyprland_packages="hyprpaper hyprlock waybar hyprpicker hyprland hyprshot hypridle uwsm swaync"
coding_utils="nvim zsh tmux git pip"
general_apps="rofi vlc wget curl ripgrep thunar dolphin flatpak lsd nmtui btop blueman tldr dnf5-plugins"
sudo dnf install -y $hyprland_packages $coding_utils $general_apps 
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh --repo gh-cli
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.microsoft.Edge -y
flatpak install flathub com.spotify.Client -y 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf check-update
sudo dnf install code -y # or code-insiders
pip install --user PyQuery
