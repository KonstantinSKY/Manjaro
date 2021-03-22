# ./update.sh

pkgs_list=$(<pkgs_list)

echo Will be installed:
echo $pkgs_list
echo Installing...
sudo pacman -Syu --needed $pkgs_list


