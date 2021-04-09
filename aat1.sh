# Creación de directorio INTECAP en /home
mkdir /home/INTECAP

# Creación de directorios:
# CONTROL ACADEMICO, ORIENTACION, SOPORTE y JEFATURA en /home/INTECAP
cd /home/INTECAP
mkdir CONTROL\ ACADEMICO ORIENTACION SOPORTE JEFATURA

# Creación de grupos
groupadd control_academico orientacion soporte jefatura

# Agregando permisos a cada carpeta según grupo correspondiente
chgrp -R control_academico CONTROL\ ACADEMICO
chgrp -R orientacion ORIENTACION
chgrp -R soporte SOPORTE
chgrp -R jefatura JEFATURA

# Creación de usuarios y asignación de grupo
useradd control1
useradd orientacion1
useradd soporte1
useradd jefatura1

# Agregando a los usuarios a su grupo correspondiente
usermod -aG control_academico control1
usermod -aG orientacion orientacion1
usermod -aG soporte soporte1
usermod -aG jefatura jefatura1


# Agregando propietario a las carpetas
chown -R control1:control_academico /home/INTECAP/CONTROL\ ACADEMICO
chown -R orientacion1:orientacion /home/INTECAP/ORIENTACION
chown -R soporte1:soporte /home/INTECAP/SOPORTE
chown -R jefatura1:jefatura /home/INTECAP/JEFATURA

# Agregando todos los permisos de usuario propietario
chmod -R u=rwx /home/INTECAP/CONTROL\ ACADEMICO
chmod -R u=rwx /home/INTECAP/ORIENTACION
chmod -R u=rwx /home/INTECAP/SOPORTE
chmod -R u=rwx /home/INTECAP/JEFATURA

# Agregando todos los permisos de grupo
chmod -R g=rw-x /home/INTECAP/CONTROL\ ACADEMICO
chmod -R g=-r+wx /home/INTECAP/ORIENTACION
chmod -R g=-rw+x /home/INTECAP/SOPORTE
chmod -R g=+rwx /home/INTECAP/JEFATURA

# Agregando todos los permisos de otros
chmod -R o=+r-wx /home/INTECAP/CONTROL\ ACADEMICO
chmod -R o=+r-wx /home/INTECAP/ORIENTACION
chmod -R o=+r-wx /home/INTECAP/SOPORTE
chmod -R o=+r-wx /home/INTECAP/JEFATURA