def putStringOnMultipleLines(inputStr, maxLength = 30, textColor = "gold"):
    curLineLen = 0
    strList = inputStr.split(' ')
    beginStrPart = '\'[{"text":"'
    endStrPart = '","italic":false,"color":"' + textColor + '"}]\''
    outputStr = beginStrPart
    for curStr in strList:
        if(curLineLen == 0 or curLineLen + len(curStr) <= maxLength):
            curLineLen += len(curStr)
            outputStr += curStr + ' '
        else:
            curLineLen = len(curStr)
            outputStr += endStrPart + ',' + beginStrPart + curStr + ' '
    return outputStr + endStrPart

def getArrowName(val):
    if(val == 's'):
        return 'spectral_arrow'
    else:
        return 'arrow'