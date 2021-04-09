# Administración de Usuarios
## Cuentas de usuario
Linux es un sistema multiusuario, por lo tanto, la tarea de  administrar usuarios se convierte en algo no solo rutinario, sino  importante, además de ser un elemento de seguridad que mal administrado o tomado a la ligera, puede convertirse en un enorme problema de seguridad.

## Tipos de usuarios
Es posible identificar tres tipos de usuarios en Linux:
* Usuario root (administrador)
* Usuarios Especiales (usuarios para daemons)
* Usuarios Normales (usuarios estándard)

Los usuarios en Unix/Linux se identifican por un número único de  usuario, UID (User ID) el sistema utiliza este UID para realizar las  tareas, no utiliza el nombre del usuario.

### Usuario root
* También llamado superusuario o administrador.
* Su UID (User ID) es 0(cero).
* Es la única cuenta de usuario con privilegios sobre todo el sistema.
* Acceso total a todos los archivos y directorios con independencia de propietarios y permisos.
* Controla la administración de cuentas de usuarios.
* Ejecuta tareas de mantenimiento del sistema..
* Puede detener el sistema.
* Puede Instalar software en el sistema.
* Puede modificar o reconfigurar el kernel, controladores, etc.
* Modo de Login desde terminal: `su` o `su root`
* Simbolo en prompt: `#`

### Usuarios especiales
* Se les llama también cuentas del sistema.
* No tiene todos los privilegios del usuario root, pero dependiendo de la cuenta asumen distintos privilegios de root.
* Lo anterior para proteger al sistema de posibles formas de vulnerar la seguridad.
* No tienen contraseñas pues son cuentas que no están diseñadas para iniciar sesiones con  ellas.
* También se les conoce como cuentas de "no inicio de sesión" (nologin).
* Generalmente se les asigna un UID entre 1 y 100 cuando se crean manualmente.
* Cuando se crean automáticamente al momento de la instalación de Linux o de una  aplicación estas toman un valor de 100 a 999.

### Usuarios normales
* Se usan para usuarios individuales.
* Cada usuario dispone de un directorio de trabajo, ubicado generalmente en `/home`.
* Cada usuario puede personalizar su entorno de trabajo.
* Tienen solo privilegios completos en su directorio de trabajo o HOME.
* Por seguridad, es siempre mejor trabajar como un usuario normal en vez del usuario root, y cuando se requiera hacer uso de comandos solo de root, utilizar el comando `su`.
* En las distribuciones actuales de Linux se les asigna generalmente un UID de 1000 en  adelante.

### Creación de usuario
```sh
adduser nombreusuario
```
El sistema pedirá alguna información adicional sobre el usuario, un  password o clave y otros datos personales. Por defecto, se crea un grupo  con el nombre del usuario y éste será el grupo por defecto.

### Eliminar usuario
```sh
userdel nombreusuario
```
Eliminara un usuario pero dejara intactas las carpetas y archivos personales del mismo.

### Eliminar usuario y su carpeta home
```sh
userdel -r nombreusuario
```
Eliminara un usuario y además se borrará el directorio personal del usuario con todo su contenido.

### Reestablecer contraseña
Reestablecerá la contraseña del usuario por una nueva.
```sh
passwd nombreusuario
```


### Creación de usuario sin shell (bash)
Creacíon de usuario, sin shell (bash) con directorio HOME específico, comúnmente usado para usuarios FTP o webserver.

```sh
useradd webmaster -c "Webmaster Sitio" -m -d /var/web -s/sbin/nologin
```
Dónde

* `-c` comentario que se utilizará para mostrar el nombre del usuario.
* `-d` para el directorio que tendrá privilegios.
* `-s` el bash.

#### ¿Usuario tendrá Shell?
NO, por seguridad a los usuarios FTP o WEB no se asigna una shell, en caso que sea necesario crear usuario  con shell, cambiar `-s /sbin/nologin` por `-s/bin/bash`. Asignar contraseña con `passwd`.

## Creación de grupo
Creara un nuevo grupo
```sh
groupadd nombregrupo
```
## Eliminación de grupo
Eliminara un grupo
```sh
delgroup nombregrupo
```

## Archivos de administración de usuarios
* `/etc/group` - Usuarios y sus grupos.
* `/etc/gshadow` - Contraseñas encriptadas de los grupos.
* `/etc/login.defs` - Variables que controlan los aspectos de la creación de usuarios.
* `/etc/passwd` - Usuarios del sistema.
* `/etc/shadow` - Contraseñas encriptadas y control de fechas de usuarios del sistema.



