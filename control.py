
import subprocess


def move(direction):
    subprocess.call(['control.sh', direction])

# sample calls
# move('left')
# move('right')
# move('up')
# move('down')
# move('start')
# move('down')
# move('up')
# move('b')
# move('start')
