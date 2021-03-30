
./update.sh
pkgs_list=$(<pkgs_list)
pkgq_aur_list=$(<pkjs_aur_list)

echo Will be installed from official repository:
echo $pkgs_list
echo Installing...
sudo pacman -Syu --needed $pkgs_list

echo Will be installed from official repository:
echo $pkgs_aur_list
echo Installing...

