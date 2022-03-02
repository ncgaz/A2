#! /usr/bin/env python3

import os
import sys
import shutil
from string import ascii_uppercase

for i, path in enumerate(map(str.rstrip, sys.stdin)):
    directory = ascii_uppercase[i]
    os.makedirs(ascii_uppercase[i])
    shutil.copy(path, ascii_uppercase[i])
