sudo mkdir devLab
pacman -S arch-install-scripts
sudo pacstrap -K /devLab base base-devel
sudo mount --bind /devLab /devLab
arch-chroot /devLab
