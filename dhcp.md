# DHCP - Dinamyc Host Configuration Protocol (Protocolo de configuración dinámica de host)
El protocolo de configuración dinámica de host es un protocolo de red de tipo cliente/servidor mediante el cual un servidor DHCP asigna dinámicamente una dirección IP y otros parámetros de configuración de red a cada dispositivo en una red para que puedan comunicarse con otras redes IP.

## Instalar dhcp
```sh
apt install isc-dhcp-server
```

## Nombre del adaptador de red
```sh
ip address show
ip route
```

## Configuración isc-dhcp-server
```sh
vi /etc/default/isc-dhcp-server
```

```
# especificar en INTERFACES el nombre la tarjeta
INTERFACESv4="enp0s8"

# comentar 
INTERFACESv6
```

## Configuración dhcpd.conf
```sh
vi /etc/dhcp/dhcp.conf
```

```
# parámetros a modificar
subnet 192
```

## Reiniciar el servicio
```sh
systemctl restart isc-dhcp-server
```
