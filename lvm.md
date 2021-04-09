# LVM - Logical Volumen Manager

Agregar 4 discos duros de 10G cada uno.

## Paso 1
Crear 4 particiones, linux lvm con fkdisk
```sh
fdisk
# n
# p
# enter
# enter

# dar tipo
# t
# L
# 8e
```

## Instalación de lvm2
```sh
apt install lvm2
```

## Ver los discos
```sh
lsblk

# /dev/sdb
# /dev/sdc
# /dev/sdd
# /dev/sde
```

## Paso 2
### Crear volumenes físicos
```sh
pvcreate /dev/sdb1
pvcreate /dev/sdc1
pvcreate /dev/sdd1
pvcreate /dev/sde1
```

## Paso 3
### Crear grupo de volumnes
```sh
vgcreate datavg /dev/sdb1 /dev/sdc1 /dev/sdd1 /dev/sde1

vgdisplay
```

## Paso 4
### Creación de logical volumen
```sh
lvcreate --name medialv --size 15G datavg
lvcreate --name backuplv --size 10G datavg
lvcreate --name sharelv --size 10G datavg
```
## Paso 5
### Dar formato
```sh
mkfs.ext4 /dev/datavg/medialv
mkfs.ext4 /dev/datavg/backuplv
mkfs.ext4 /dev/datavg/sharelv
```

## Paso 6
### Crear punto de montaje
```sh
cd /opt
mkdit media

cd /mnt 
ls
mkdir backup

cd /home
ls
mkdir share
```
### Montar
```sh
# mount origen destino
mount /dev/datavg/medialv /opt/media
mount /dev/datavg/backuplv /mnt/backup
mount /dev/datavg/sharelv /home/share
```
### Fijar los puntos de montaje
Modificar archivo `/etc/fstab`

```sh
vi /etc/fstab
```

Agregar las siguientes líneas
```sh
# mediavl 15G /opt/media
/dev/datavg/medialv /opt/media ext4 defaults 0 0

# backuplv 10G /mnt/backup
/dev/datavg/backuplv /mnt/backup ext4 defaults 0 0

# sharelv 10G /home/share
/dev/datavg/sharelv /home/share ext4 defaults 0 0
```
