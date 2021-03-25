# Raid

# Raid 0

# Raid 1

## Raid 5
```sh
#lsblk - list block devices
lsblk

mdadm --detail /dev/md5

mdadm --create --verbose /dev/md5 --level=5 --raid-devices=3 /dev/sdb1
/dev/sdc1 /dev/sdd1


# Montar arreglo
cd /mnt
mkdir RAID5
mount /dev/md5 /mnt/RAID5

# Crear ficheros
cd /mnt/RAID5
mkdir ARREGLOS DATOSRAID PRUEBARAID5

touch datos_prueba

# para que el arreglo se monte de forma permanente
# editamos el archivo /etc/fstab
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
sudo vi /etc/fstab

# agregamos la línea
# /dev/md5	/mnt/RAID5	ext4	default	0	0


# simular una falla

# apagar equipo y en quitar un disk en el almacenamiento
```