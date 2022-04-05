echo -e "hey! welcome to the installation of sptfetch. a minimal info fetch for spotify songs"

read -r -p "have you already installed pip3? [y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
  echo -e "ok, installation continue"
else
   sudo pacman -S python-pip
fi

pip3 install dbus-python
git clone https://github.com/okklol/sptfetch.git
sudo chmod +x ~/sptfetch/sptfetch
sudo mv ~/sptfetch/sptfetch /usr/bin/
