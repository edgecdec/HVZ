def putStringOnMultipleLines(inputStr, maxLength = 30, textColor = "gold"):
    curLineLen = 0
    strList = inputStr.split(' ')
    beginStrPart = '\'[{"text":"'
    endStrPart = f'","italic":false,"color":"{textColor}"}}]\''
    outputStr = beginStrPart
    for curStr in strList:
        if(curLineLen == 0 or curLineLen + len(curStr) <= maxLength):
            curLineLen += len(curStr)
            outputStr += f"{curStr} "
        else:
            curLineLen = len(curStr)
            outputStr += f"{endStrPart},{beginStrPart}{curStr} "
    return f"{outputStr}{endStrPart}"

def getArrowName(val):
    if(val == 's'):
        return 'spectral_arrow'
    else:
        return 'arrow'

def getCustomModelData(weaponData):
    tool = weaponData['minecraftToolName']
    print(tool)
    if tool == "scute":
        return f"CustomModelData:{weaponData['customModelData']}, "
    else:
        return ""
