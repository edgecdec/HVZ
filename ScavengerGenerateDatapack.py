import os
import errno
from ScavengerConstants import *
from ScavengerFileTemplates.GeneratePackMetaFile import generatePackMetaFile
from ScavengerFileTemplates.GenerateItemsToFindFiles import generateItemsToFindFiles
from ScavengerFileTemplates.GenerateJoinGameFile import generateJoinGameFile
from ScavengerFileTemplates.GenerateEndGameFile import generateEndGameFile
from ScavengerFileTemplates.GenerateSetupGameFile import generateSetupGameFile
from ScavengerFileTemplates.GenerateSeeIfAnyoneFinishedFile import generateCheckIfAnyoneFinishedFile
from Util import zipDir

"""
RUN THIS FILE TO GENERATE THE SCAVENGER DATAPACK!
"""

if not os.path.exists(os.path.dirname(DIR_PATH)):
    try:
        os.makedirs(os.path.dirname(DIR_PATH))
    except OSError as exc:
        if exc.errno != errno.EEXIST:
            raise

if not os.path.exists(f'{DIR_PATH}items'):
    os.makedirs(f'{DIR_PATH}items')

if not os.path.exists(f'{DIR_PATH}control'):
    os.makedirs(f'{DIR_PATH}control')

for file in os.scandir(f'{DIR_PATH}items'):
    os.remove(file.path)

print("Creating files for all items to find...")
generateItemsToFindFiles()

print("Creating join game file...")
generateJoinGameFile()

print("Creating end game file...")
generateEndGameFile()

print("Creating setup game file...")
generateSetupGameFile()

print("Creating pack meta file...")
generatePackMetaFile()

print("Creating see if anyone finished file...")
generateCheckIfAnyoneFinishedFile()

print("Zipping datapack...")
zipDir(BASE_PATH, f'scavenger_autogen.zip')

print("DONE!")