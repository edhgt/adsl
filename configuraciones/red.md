Se de debe agregar una red interna.

cp /etc/network/interfaces.old
nano/etc/network/interfaces

desactivar en networkmanager: es un servicio gráfico para configurar la red

systemctl status NetworkManager.service
systemctl disable network.manager.service

systemctl stop NetworkManager.service

archivo interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto eth0
iface eth0 inet static
	address 192.168.1.100
	netmask 255.255.255.255
	network 192.168.10.0
	broadcast 192.168.10.255
	gateway 192.168.10.254


reiniciar servicio de red
sudo systemctl restart networking

