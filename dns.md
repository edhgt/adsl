# DNS - Domain Name Server (Sistema de nombres de dominio)
El sistema de nombres de dominio (Domain Name System o DNS, por sus siglas en inglés)1​ es un sistema de nomenclatura jerárquico descentralizado para dispositivos conectados a redes IP como Internet o una red privada. Este sistema asocia información variada con nombres de dominio asignados a cada uno de los participantes. Su función más importante es "traducir" nombres inteligibles para las personas en identificadores binarios asociados con los equipos conectados a la red, esto con el propósito de poder localizar y direccionar estos equipos mundialmente.2​

El servidor DNS utiliza una base de datos distribuida y jerárquica que almacena información asociada a nombres de dominio en redes como Internet. Aunque como base de datos el DNS es capaz de asociar diferentes tipos de información a cada nombre, los usos más comunes son la asignación de nombres de dominio a direcciones IP y la localización de los servidores de correo electrónico de cada dominio.

La asignación de nombres a direcciones IP es ciertamente la función más conocida de los protocolos DNS. Por ejemplo, si la dirección IP del sitio Google es 216.58.210.163, la mayoría de la gente llega a este equipo especificando www.google.com y no la dirección IP. Además de ser más fácil de recordar, el nombre es más fiable.3​ La dirección numérica podría cambiar por muchas razones, sin que tenga que cambiar el nombre del sitio web. Incluso, en el caso de que una página web utilice una red de distribución de contenidos (Content delivery network o CDN, por sus siglas en inglés) por medio del DNS el usuario recibirá la dirección IP del servidor más cercano según su localización geográfica (cada CDN a su vez tiene sus propios servidores DNS).


## Instalar dns
```sh
apt install bind9
```

## Nombre del adaptador de red
```sh
ip address show
ip route
```

## Backups
```sh
# backup de base de datos de la zona directa
cp /etc/bind/db.local /etc/bind/db.directaintecap
# backup de base de datos de la zona inversa
cp /etc/bind/db.127 /etc/bind/db.inversaintecap

```

## Configurar zona directa
```sh
hostname
# configurar hostname
vi /etc/hosts
#  Insertar línea: 192.168.80.1 srvdebian8.intecap.gt

# configurar zona directa
vi /etc/bind/db.directaintecap
# ver imagenes

# configurar zona inversa
vi /etc/bind/db.inversaintecap
# ver imagenes
```

```sh
# copiar
cat /etc/bind/named.conf.default-zones

# a 
vi /etc/bind/named.conf.local
```

## FQDN
```sh
hostname.dominio
```

## /etc/resolv.conf
```sh
vi  /etc/resolv.conf
# agregar 
nameserver	192.168.1.10
# la ip del servidor
```


## Reiniciar el servicio
```sh
systemctl restart bind9
```

## Comprobar la configuración
Si hay errores acá los devuelve
```sh
# conf
named-checkconf

# verificar zona directa
named-checkzone intecap.gt db.directaintecap

# verificar zona inversa
named-checkzone 1.168.192.in-addr.arpa db.inversaintecap

```

## Verificar resolución
```sh
nslookup www.intecap.gt

nslookup 192.168.1.150

# otra forma

```


