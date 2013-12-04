import subprocess
import sys

subprocess.check_call(['mpiexec','-n','5', sys.executable,  'helloworld.py'])
