################################################################################
# Script name : autologin.sh                     Date   : 04/26/2021           #
# Author      : Stan SKY                         E-mail : sky012877@gmail.com  #
# Description : autologin for one user for Manjaro                             #
################################################################################

echo change line:
echo 'auth        [success=1 default=ignore]  pam_succeed_if.so user ingroup autologin'
echo to 
echo 'auth        [success=1 default=ignore]  pam_succeed_if.so user ingroup user'
read var 
sudo nano /etc/pam.d/lightdm-autologin


echo autologin-guest=false
echo autologin-user=user
echo autologin-user-timeout=5
echo autologin-in-background=false


sudo nano /etc/lightdm/lightdm.conf

