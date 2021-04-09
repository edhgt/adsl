# Editores de texto
A diferencia de un procesador de texto, un editor de texto no ofrece herramientas  para determinar visualmente cómo quedará el documentoimpreso.

Pero permite mover, copiar, eliminar o insertar caracteres con muchaversatilidad.Este tipo de programas es frecuentemente utilizado por programadoresparaescribir código fuente desoftware.

## Nano
Es un editor de texto bastante básico diseñado para el terminal, no es tan  potente como Vi pero es mucho más fácil demanejar.Cualquier usuario por poco experimentado es capaz de empezar a usar  Nano desde el primer momento gracias a las dos líneas de ayuda que  mantiene en su parteinferior.

### Comandos básicos de nano
| Combinación          | Función                                            |
|----------------------|----------------------------------------------------|
| nano archivo1        | Edita archivo1 si existe; si no, locrea            |
| <Ctrl> + g           | Ayuda                                              |
| <Ctrl> + x           | Salir del editor                                   |
| <Ctrl> + o           | Guardar                                            |
| <Ctrl> + c           | Muestra línea actual                               |
| <Ctrl> + w           | Buscar una cadena de texto en el editor            |
| <Ctrl>+w)+(<Ctrl>+r) | Reemplazar una cadena de texto en el editor        |
| <Ctrl> + y           | Moverse al principio del archivo                   |
| <Ctrl> + v           | Moverse al final del archivo                       |
| <Ctrl> + k           | Cortar la línea actual y la guarda en el cutbuffer |
| <Ctrl> + u           | Pegar el cutbuffer en la línea actual.             |
| <Ctrl> + _           | Cambia el cursor a la línea y columna especifica   |


## Vi
Es quizás el editor de texto más conocido del mundo Linux y Unix, pero su popularidad  no se debe precisamente a su sencillez, de hecho Vi es mas bien complicado. Aunque  hay otros editores conocidos y más fáciles de usar, entre ellos Pico, Emacs y Nano; Vi  tiene la ventaja de encontrarse virtualmente en todas las distribuciones de Linux y Unix,  así que como profesionales debemos de saber utilizar esta herramienta para editar  archivos en cualquier entorno.

### Modos de trabajo en Vi
1. Modo comando: las teclas ejecutan acciones que permiten desplazar el cursor,  recorrer el archivo, ejecutar comandos de manejo del texto y salir del editor. Es el modo inicial de vi.

1. Modo inserción: las teclas ingresan caracteres en el texto, tenga en cuenta que en  el modo inserción no se puede movilizar el cursor con las flechas del teclado.

### Comandos Vi
| Combinación     | Función                                                                     |
|-----------------|-----------------------------------------------------------------------------|
| vi archivo1     | Edita archivo1 si existe; si no, locrea                                     |
| :set showmode   | Muestra el modo actual de vi                                                |
| :set nu         | Muestra la numeración de línea                                              |
| <ESC>           | vuelve a modo comando                                                       |
| :q!             | Salir del editor sin guardar ni pedir confirmación                          |
| :w              | Guarda los cambios en el archivo                                            |
| <shift> + z + z | Guardar y salir del editor                                                  |
| i               | inserta texto a la izquierda del cursor                                     |
| a               | inserta texto a la derecha del cursor                                       |
| o               | Agrega salto de línea e inserta texto al principio de lamisma               |
| <Shift> + r     | Sobrescribir en la posición del cursor                                      |
| <Delete>        | Borra caracteres a la derecha del cursor                                    |
| x               | Borra el carácter sobre elcursor                                            |
| <Backspace>     | Regresa un espacio a la izquierda sin borrar, (habilitandoreescritura)      |
| u               | Deshacer / Rehacer                                                          |
| /               | Busca cadena de texto eneleditor(presionar n para la siguientecoincidencia) |
| :1,$s/X/Y/g     | Cambia la cadena X por la cadena Y en todo elarchivo                        |
| 1(<shift>+g)    | Mueve el cursor al inicio delarchivo                                        |
| <shift>+g       | Mueve el cursor al final delarchivo                                         |
| <Ctrl>+g        | Muestra el número de líneaactual                                            |
| :10             | Mueve el cursor a la línea10                                                |
| dd              | borra unalínea                                                              |
| 5dd             | Borra 5 lineas iniciando desde la posición del cursor                       |
| yy              | Copia unalínea                                                              |
| 5yy             | Copia 5 lineas iniciando desde la posición del cursor                       |
| P               | Pega lo que este contenido en memoria                                       |

### Consideraciones al usar Vi
* Confundir un modo con otro: la mayor dificultad para el manejo de vi.
* En ayuda a esto, puede activarse un indicador de modo ingresando el comando
`:set showmode`

* Esto hace aparecer una leyenda que indica si se está en modo comando o inserción.
* Diferencia entre mayúsculas yminúsculas: confundir un comando en minúscula digitando uno en mayúscula suele tener consecuencias catastróficas. **Se aconseja evitar el uso de (CapsLock);para mantener el teclado en minúsculas.**

No cerrar Bruscamente la terminal al editar unarchivo.
Al cerrar vi bruscamente, este realizara una copia del archivo en swap ocasionando  que la próxima vez que editemos dicho archivo, este mostrara un error y únicamente  podremos abrirlo como solo lectura, para no perder los cambios que hayamos  realizado.

Para solucionar este problema realizamos los siguientes pasos:
```sh
vi prueba # abrimos el archivo con vi)
:recover # recuperamos los cambios realizados hasta el momento que cerró
<Shift>+z+z # guardamos los cambios ysalimos
rm -rprueba.swp # Eliminamos el archivo swap, para evitar que salga el error
```
