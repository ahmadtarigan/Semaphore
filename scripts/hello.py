import os
import platform
import socket
import sys

print("Hello from Semaphore Python template")
print(f"Host: {socket.gethostname()}  Python: {sys.version.split()[0]}  OS: {platform.platform()}")
print(f"DEMO_MESSAGE={os.environ.get('DEMO_MESSAGE', '<not set>')}")
