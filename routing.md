
# Routing

## Rutas estáticas
```sh
# se necesitan 2 servidores
# verificar nombre de los servers
# verificar tarjetas
# en cada servidor tener dos tarjetas de red
# la primera para wan y la segunda para lan red interna

hostname
ipaddr

# cambiar nombre
hostnamectl set-hostname router1

# paquetería para convertir en enrutador a debian
# quoada7
apt install quagga telnet nmap
```

### configuraración
```sh
cd /etc/quagga
ls
# daemons
# debian.conf

# habilitar el reenvío de paquetes
vi /etc/sysctl.conf

net.ipv4.ip_forward=1
# guardar

sysctl -w net.ipv4.ip_forward=1

# editar daemons
vi daemons
# habilitar zebra para enrutar estátiamente
zebra=yes


# ficheros de ejemplos para crear rutas estáticas
cd /usr/share/doc/quagga/examples
# copiar zebra.conf.example
cp zebra.conf.example /etc/quagga/zebra.conf

cd /etc/quagga

# verificar permisos
ls -lh

chown quagga zebra.conf #cambiar usuario propietario
chgrp quagga zebra.conf #cambiar grupo primario
chmod 640 zebra.conf 	#cambiar permisos

# editar zebra
vi zebra.conf

hostname router1
password zebra
enable password zebra
#guardar


# reiniciar servicio de red
service networking restart
systemctl start zebra
service networking status
# acceder a la interfaz de  confgiuración de zebra
telnet localhost zebra

# ingresar contraseña

# para ser root
enable
# password zebra

show running-config

configure terminal

interface eth0 # enp0s3
ip address 5.5.5.1/30 #router 1
ip address 5.5.5.2/30 # router 2
no shutdown
exit

interface eht1 # enp0s8
ip address 192.168.1.1/24 #router 1
ip address 172.16.0.1/16 #router 2
no shutdown
exit
exit
copy running-config startup-config #guardar 

show running-config


# configurar ruta de salto 
12 
configure terminal
#r1
ip route 172.16.0.0/16  5.5.5.2
#r2
ip route 192.168.1.0/24  5.5.5.1
exit
show running-config

copy running-config st
# do write
exit


# reiniciar quadda
service quagga restart
ip addr

```

modificar la eth0 y dejarla como
host only
virtual host-only ehternet adapter
o reakcte última opción

```sh
service networking restart
```

eso hacerlo en los dos servidores


checar

tracert


## dinámico
```sh
# editar daemons
vi daemons
# habilitar zebra para enrutar dinámica
rip=yes
# ficheros de ejemplos para crear rutas dinámica
cd /usr/share/doc/quagga/examples
# copiar zebra.conf.example
cp ripd.conf.example /etc/quagga/ripd.conf

# verificar permisos
ls -lh

chown quagga ripd.conf #cambiar usuario propietario
chgrp quagga ripd.conf #cambiar grupo primario
chmod 640 ripd.conf 	#cambiar permisos

service quagga restart
service status restart

telnet localhost zebra


configure t
show ip rip

rip
version 2
network 5.5.5.0/30
network 192.168.1.0/24

do show ip rip

```

ver el estado 
```sh
do sho ip route
```
