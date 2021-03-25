crear 4 particiones, linux lvm

```sh
/dev/sdb
/dev/sdc
/dev/sde
/dev/sdf

apt install lvm2

# Crear volumen lógico
pvcreate /dev/sdb1
pvcreate /dev/sdc1
pvcreate /dev/sdd1
pvcreate /dev/sde1
```