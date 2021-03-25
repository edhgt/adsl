# Gestión de paquetes
## Debian
* Paso 1, montar el cdrom 2
* Paso 2, agregar el cdrom: `apt-cdrom add`
* Paso 3, actualizar el repositorio: `apt-get update`

### Instalación de paquetes post instalación Debian
1. `apt get install gcc` - GNU Compiler Collection.
1. `apt get install make` - Permite compilar programas ejecutables.
1. `apt get install dkms` - Dynamic Kernel Module Support.
1. `apt get install build-essential` - Herramientas necesarias para la creación, compilación e instalación de programas.
1. `apt get install linux-headers` - Verifica dependencias y drivers referentes a los módulos del kernel al momento de la instalación.

## CentOS
### Instalación de paquetes post instalación CentOS
1. `yum install dkms` - Dynamic Kernel Module Support.
1. `yum install gcc` - GNU Compiler Collection.
1. `yum install make` - Permite compilar programas ejecutables.
1. `yum groupinstall "Development Tools` - Permite compilar programas de diversos lenguajes de programación.
1. `yum install gcc kernel-devel-$(uname-r)` - Instala compiladores para elkernelInstalado actualmente en el equipo alutilizar  (variable con uname-r).