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

# Create files for all items
generateItemsToFindFiles()

# Create join game file
generateJoinGameFile()

# Create end game file
generateEndGameFile()

# Create setup game file
generateSetupGameFile()

# Create pack meta file
generatePackMetaFile()

# Create see if anyone finished file
generateCheckIfAnyoneFinishedFile()

zipDir(BASE_PATH, f'scavenger_autogen.zip')
