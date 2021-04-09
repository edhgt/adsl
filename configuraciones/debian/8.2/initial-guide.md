# Guía para instalación de repositorio

## Instalar `sources.list`
```sh
# first
su root -

cp /etc/apt/sources.list /etc/apt/sources.list.backup

# second
wget --no-check-certificate -P /etc/apt https://raw.github.com/dhernandz7/adsl/main/configuraciones/debian/8.2/sources.list

apt-get -y install deb-multimedia-keyring

apt-get update

apt-get install deb-multimedia-keyring

apt-get install -y sudo
```

## Add user as root
```sh
# first
su root -

# second: copy and paste the line root    ALL(ALL:ALL) ALL
# third: modify the new line with YOUR_USER    ALL(ALL:ALL) ALL
vi /etc/sudoers

# third: exit of vim with :wq
```
