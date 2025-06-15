# LaGranBodegaVinateria-PalaciosContreras

Procedimiento para la correcta creacion del esquema y sus componentes:

Abrir MySql Workbench.
Ejecutar primero el archivo .sql 'Vinateria_La_Gran_Bodega_Script' En este archivo esta el script que ejecuta la creacion y uso del esquema y la creacion de las tablas.
Posteriormente, ejecutar los archivos 'Vinateria_La_Gran_Bodega_Funciones', 'Vinateria_La_Gran_Bodega_Procedures' 'Vinateria_La_Gran_Bodega_Triggers', en los cuales se ejecuta la creacion de las funciones, las procedures y los triggers, respectivamente. El orden de ejecucion es indiferente.
Una vez ejecutados estos archivos, importar la informacion de las tablas desde los archivos .csv que se encuentran dentro de la carpeta 'info_tablas' mediante el 'Table Data Import Wizard', o bien, se pueden poblar las datas ejecutando el archivo 'Vinateria_La_Gran_Bodega_Seeder'.
Finalmente se deben crear las vistas por medio de la ejecucion del archivo 'Vinateria_La_Gran_Bodega_Vistas'.
Opcionalmente, se puede correr el script de los usuarios para crearlos en el schema.

Procedimiento para correr back up:

En la carpeta 'backup' esta el ejecutable del backup del proyecto. Se puede correr en el Workbench para correr todo el proyecto. 
