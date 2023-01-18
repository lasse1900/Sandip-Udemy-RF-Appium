*** Settings ***
Library     AppiumLibrary
Resource    ../Library/Helpers/AppHelper.robot
Resource    ../Library/Helpers/AddNoteHelper.robot

*** Variables ***
${NOTE_TITLE}  Python_Title
${ITEM-1}  Methods
${ITEM-2}  Class

*** Test Cases ***
AddNewNoteWithMultipleItems
    Launch Google Keep Note App
    Add New Note With Two Items     ${NOTE_TITLE}   ${ITEM-1}   ${ITEM-2}
    page should contain text    ${NOTE_TITLE}

