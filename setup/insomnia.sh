echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo rm /etc/apt/trusted.gpg.d/home:manuelschneid3r.asc
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y insomnia
