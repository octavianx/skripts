"""启动python shell 时自带的， 根据expert python programming, 2nd, Chap1  """

import readline
import rlcompleter
import atexit
import os

readline.parse_and_bind('tab: complete')

histfile = os.path.join(os.environ['HOME'],'.pythonhistory')
try:
    readline.read_history_file(histfile)
except IOError:
    pass

atexit.register(readline.write_history_file, histfile)
del os, histfile,readline,rlcompleter
