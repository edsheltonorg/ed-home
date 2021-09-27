import os
import fnmatch
from pathlib import Path

# set path to location of python script
script_root = os.path.dirname(os.path.realpath(__file__))

# set placeholder file name
file_name = "placeholder"

# recursively delete all files that match placeholder file name
def recurse_delete_placeholder():
    for root, dirs, files in os.walk(script_root):
        for files in fnmatch.filter(files, file_name):
            os.remove(os.path.join(root, files))
    print("Done deleting all (" + file_name + ")s!")

# create bottom directory list
def bottom_dir_add_placeholder():
    lowest_dirs = list()
    for root, dirs, files in os.walk(script_root):
        if not dirs:
            lowest_dirs.append(root)

    # add blank file to every bottom directory, using placeholder file name
    for f in range(len(lowest_dirs)):
        full_name = os.path.join(lowest_dirs[f], file_name)
        Path(full_name).touch()
    print("Done creating all (" + file_name + ")s!")

# User input for switch
user_input = input("1: Full Script\n2: Only Delete '" + file_name + "'\n> ")

def user_switch(i):
    if i == "1":
        recurse_delete_placeholder()
        bottom_dir_add_placeholder()
    elif i == "2":
        recurse_delete_placeholder()
    else:
        print("Input error, exiting script...\n")

user_switch(user_input)
