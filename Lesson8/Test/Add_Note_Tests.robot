
*** Settings ***
Library     AppiumLibrary
Resource    ../Library/Helpers/AppHelper.robot
Resource    ../Library/Helpers/AddNoteHelper.robot
Library     ../Library/PyLibs/Utility.py

*** Variables ***
${NOTE_TITLE}  Python_Title
${ITEM-1}  Methods
${ITEM-2}  Class

*** Test Cases ***
AddNewNoteWithMultipleItems
    Open Google Keep Note App
    Add New Note With Two Items     ${NOTE_TITLE}   ${ITEM-1}   ${ITEM-2}
    page should contain text    ${NOTE_TITLE}


