sudo apt-get install curl wget gnupg2 ca-certificates lsb-release apt-transport-https -y


wget https://packages.sury.org/php/apt.gpg
sudo apt-key add apt.gpg

echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.list

sudo apt-get update -y