#!/usr/bin/python3

"""
Usage: python3 listdirs.py [dir_name]

Recursively list all filenames relative to the dir
"""

import os
import sys

BASE_DIR = sys.argv[-1]

for dir_name, sibdirs, files in os.walk(BASE_DIR):
    for file in files:
        print(os.path.join(dir_name, file))