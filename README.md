# Administración de Servidores GN/Linux

Guía para Administración de Servidores GNU/Linux

**Tabla de contenido**
1. [Instalación de repositorio apt](#instalacion-apt)
1. [Agregar usuario a sudo](#sudo)

## Instalación de repositorio apt
<a name="instalacion-apt"></a><a name="1.1"></a>
  - [1](#instalacion-apt) **Primitives**: ...

Paso uno: Iniciar sesión como usuario root
```sh
su root -
```

Paso dos: Hacer un backup del archivo `/etc/apt/sources.list`
```sh
cp /etc/apt/sources.list /etc/apt/sources.list.backup
```

Paso tres: Descargar sources.list y actualizar repositorio
```sh
wget --no-check-certificate -P /etc/apt https://raw.github.com/dhernandz7/adl/main/debian/8.2/sources.list

apt-get -y install deb-multimedia-keyring

apt-get update
```
**[⬆ voler a la tabla de contenido](#table-of-contents)**


## Agregar usuario a sudo
**[⬆ voler a la tabla de contenido](#table-of-contents)**