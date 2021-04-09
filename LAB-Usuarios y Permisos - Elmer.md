# LAB-Usuarios y Permisos

## Resuelto por: Elmer Danilo Hernandez, carné: 2018-

### 2. Crea los grupos **oficina1** y **oficina2**.
```sh
sudo groupadd oficina1
sudo groupadd oficina2

# visualizar si los grupos están creados
cat /etc/group
```

### 3. Crea los usuarios **paco** y **pablo**. Estos usuarios deben pertenecer únicamente al grupo **oficina1**.
```sh
sudo useradd -g oficina1 paco
sudo useradd -g oficina1 pablo

# asignar a grupo
sudo adduser paco oficina1
sudo adduser pablo oficina1

```

### 4. Crea los usuarios **alba** y **nerea**. Estos usuarios deben pertenecer únicamente al grupo oficina2.
```sh
sudo useradd -g oficina2 alba
sudo useradd -g oficina2 nerea

sudo adduser alba
sudo adduser nerea

# asignar a grupo
sudo adduser alba oficina2
sudo adduser nerea oficina2
```

### 5. Como usuario paco crea un fichero con nombre **topsecret.txt** en su directorio de trabajo al que únicamente él tenga acceso, tanto de lectura como de escritura.
```sh
su paco -
# /home/paco
touch topsecret.txt
sudo chmod 600 topsecret.txt
# o
sudo chmod u+rw-x,g-rwx,o-rwx topsecret.txt

# no lo pide pero asi
sudo chgrp oficina1 topsecret.txt
```

### 6. Crea otro fichero, también como usuario **paco**, con nombre **ventas_trimestre.txt** al que tengan acceso, tanto para leer como para escribir todos los usuarios que pertenecezcan al mismo grupo. Se deben dejar los permisos por defecto para el dueño y para el resto de usuarios. Comprueba como usuario **pablo** que puedes modificar el fichero.
```sh
touch ventas_trimestre.txt
sudo chmod 664 ventas_trimestre.txt

# o
sudo chmod g+rw ventas_trimestre.txt

su pablo
vi ventas_trimestre.txt

# al dar :wq da permiso denegado

# cambiar el archivo ventas_trimestra a un grupo en común que tiene pablo y paco.
sudo chgrp oficina1 ventas_trimestre.txt
```

### 7. Como usuario **alba**, crea un fichero con nombre **empleados.txt** al que pueda acceder cualquier usuario para leer su contenido y cualquier usuario del mismo grupo pueda leer y escribir.
```sh
sudo su alba -
touch empleados.txt
chmod u+rw-x,g+rw-x,o+r-wx empleados.txt
chmod 664 empleados.txt
```

### 8. Copia el fichero **empelados.txt** al directorio de trabajo de **alumno** (crea también el usuario alumno si no está creado). 
Cambia el propietario y el grupo al que pertenece el fichero, ahora debe ser **alumno**.
```sh
sudo useradd alumno
cp empleados.txt ~alumno
sudo chown alumno:alumno ~alumno/empelados.txt
```

### 9. Como usuario **pablo**, copia un programa del directorio `/usr/bin` al directorio de trabajo con un nombre diferente. Por ejemplo `xclock` se puede copiar como `reloj`. Mira los permisos de este.
```sh
sudo su pablo -
cp /usr/bin/xclock ~/reloj
ls -lh ~/reloj
```

### 10. Cambia los permisos de `reloj` de tal forma que sólo el pueda ejecutar el propietario del archivo.
```sh
sudo chmod 100 ~/reloj
```
### 11. Crea el usuario **modesto**, perteneciente al **oficina2**. Dentro de su directorio de trabajo, crea un directorio de nombre `compartido_con_todos`.
```sh
sudo useradd -g oficina2 modesto
sudo su modesto -
mkdir ~/compartido_con_todos
```

### 12. Cambia de usuario en el entorno gráfico (botón salir y botón cambiar de usuario) y  entra como modesto. Crea con **OpenOffice.org Calc** los fichero `telefono_contactos.ods`, `gastos_marzo.ods` y `sueldos.ds`. Inserta varias entradas en cada uno de los ficheros y grábalos todo en el directorio `compartido_con_todos`.
```sh

```

### 13. Da permiso de lectura a la carpeta `compartido_con_todos` y a  todos los ficheros que contenga para todos los usuarios.
```sh
sudo su modesto -
sudo chmod a+r ~/compartido_con_todos
```

### 14. **Restringe** el acceso de escritura sobre el fichero `telefono_contactos` para que sólo lo puedan modificar los usuarios del grupo al que pertenece su propietario.
```sh
sudo chmod 
```

### 15. Cambia los permisos de `gastos_marzo` para que sólo pueda modificarlo su propietario y leerlo cualquiera del mismo grupo.
```sh
sudo chmod 700 gastos_marzo.ods
```

### 16. Cambia los permisos de `sueldos` para que sólo su dueño tenga acceso a él, tanto para lectura como para escritura.
```sh
sudo chmod 700 sueldos.ods
```
### 17. Si un usuario tiene permiso de lectura sobre un fichero pero ese fichero se encuentra dentro de un directorio sobre el que no tiene permisos de lectura, ¿podrá leer el fichero?, haz la prueba.
```sh
# No puede leer el fichero porque no tiene permiso al directorio padre del fichero.
```