echo 'downloading files...'
sleep 1
sudo apt-get install python3 flatpak gnome-software-plugin-flatpak
sudo dnf install python3 flatpak gnome-software-plugin-flatpak
sudo pacman -S python3 flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
clear
echo 'configuring files...'
sleep 1
rm -rf ~/.local/share/NacreousDawn596/flatnac/
mkdir ~/.local/share/NacreousDawn596/
cd ..
mv flatnac ~/.local/share/NacreousDawn596/
touch ~/.local/share/NacreousDawn596/flatnac/.fl.sh
rm ~/.local/share/NacreousDawn596/flatnac/setup.sh
echo 'source ~/.local/share/NacreousDawn596/flatnac/main.sh' >> ~/.bashrc
echo 'source ~/.local/share/NacreousDawn596/flatnac/.fl.sh' >> ~/.bashrc
clear
echo 'done :)'