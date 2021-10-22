import os
import zipfile

def zipDir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file),
                       os.path.relpath(os.path.join(root, file),
                                       os.path.join(path, '..')))

#Turn whole datapack into .zip file
zipf = zipfile.ZipFile('hvz.zip', 'w', zipfile.ZIP_DEFLATED)
zipDir('hvz/', zipf)
zipf.close()