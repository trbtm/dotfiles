echo "deb http://ppa.launchpad.net/bablu-boy/nutty/ubuntu bionic main"  | sudo tee /etc/apt/sources.list.d/bablu-boy-ubuntu-nutty-focal.list
sudo apt update
sudo apt install -y com.github.babluboy.nutty
