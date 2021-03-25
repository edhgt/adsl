# Usando el Shell
## 3 principales componentes del Sistema Operativo
1. Kernel (nucleo) –Administra la interacción con el hardware de la computadora.
1. Shell –Promueve la interaccion entre el usuario y la computadora.
1. Filesystem (Sistema de archivos) –Promueve organizacion y administracion de toda la informacion de la computadora.

## ¿Qué es un comando?
Un comando es una instrucción u orden que el usuario proporciona a un sistema informático desde la CLI (Interfaz de Línea de Comando). En linux ingresamos dichos comandos en una Terminal.

## Terminal
Es un programa que permite la entrada de comandos por parte del usuario, dichos comandos son enviados a nuestro interprete de comandos linux llamado bash.

## Interprete de comandos Shell
Es un programa que tiene la capacidad de traducir las órdenes que introducen los usuarios, y así poder comunicarse directamente al núcleo.Bash (Bourne again shell) : es el intérprete de comandos por defecto en la  mayoría de las distribuciones de GNU /Linux.

## interprete de comandos Shell
El shell por defecto de un usuario puede ser cambiado utilizando el comando: `usermod`.
El directorio del archivo que contiene el shell por defecto de cada  usuario esta en el directorio: `/etc/passwd`

## Kernel
Programa principal de un Sistema operativo que carga al iniciarla computadora administrando las siguientes operaciones:
* Administrar Dispositivos, memoria, yprocesos
* (Recursos que utiliza unaaplicacion)

## Consideraciones al ingresar comandos
Todos los comandos en linux y sistemas unix son CASE-SENSITIVE(sensibles a  mayúsculas y minúsculas) lo que significa que debemos d etener cuidado al ingresarlos, de lo contrario obtendremos un mensaje de error, no ocurrirá nada,opueda que se realice alguna otra acción no deseada. 

Ejemplo:viarchivo1no es lo mismo que Vi archivo1.

El comando vi archivo abrirá archivo1 con el editor de texto vi 
Mientras que Vi archivo1 devolverá elsiguiente error:bash: Vi: no se encontró la orden.

## Administración de comandos
* pwd(print working directory) - Muestra el directorio actual
* `ls` (list) - Lista archivos y carpetas contenido de un directorio, (excepto losocultos)
* `ls -l` - Lista archivos y carpetas del directorio actual, con detalles. (excepto los ocultos)
* `ls -a` - Muestra todos los archivos ocultos del directorio actual
* `du -h` Muestra el espacio que ocupa un archivo o directorio 
* `cd` (change directory)
* `cd /home/usuario/Documentos` - Permite movernos por los directorios del sistema. Nos moviliza del directorio actual hacia la carpeta Documentos
* `cd..` - Sube un directorio

man +comandoMuestra detalladamente el uso de uncomando.apropos (tema ocomando)Muestra una lista de comandos relacionados con eltema<Tab>Autocompletar el comando o archivo si sólo hay unaopción<Tab><Tab>Muestra todas las coincidencias del comando oarchivohistoryMuestra el listado de comandos ingresados por elusuario<Flechaarriba>Muestra el comandos ingresados anteriormente alactual<Flechaabajo>Muestra el comandos ingresados posteriormente alactual<ctrl>+zo<ctrl> +cCancelaran procesosextendidosalias ls =”ls--color”Crea un alias(comando personalizado) para uncomandoclearLimpia laterminal


* `date` - Muestra la hora y fecha delsistema
* `date -s "AAAA/MM/DDHH:MM:SS"` - Modifica la fecha y hora delsistema
* `cat /proc/cpuinfo` - Muestra detalladamente la información del procesador
* `uname -r` Muestra la versión del kernel del sistema 
* `arch` Muestra la arquitectura del equipo (procesadorsoportado)
* `hostname` - Muestra el nombre del equipo
* `hostname` Equipo1 - Cambia el nombre del equipo aEquipo1
* `uname -a` Muestra la información del equipo
* `uptime` Muestra el tiempo que ha estado encendido elequipo
* `who` Muestra la lista de usuarios delequipo
* `whoami` - Muestra el usuario que está utilizando el sistema en esemomento
* `watch –n 1 –d free` Muestra la memoria ram y swap utilizada en tiempo real