*** Settings ***
Library     AppiumLibrary
Resource    ../Library/Helpers_New/AppHelper.robot
Resource    ../Library/Helpers_New/AddNoteHelper.robot
Library    ../Library/PyLibs/Utility.py

*** Variables ***
${title}  get_random_string    5  Title
${item1}  get_random_string    3  Item
${item2}                      3  Item

*** Test Cases ***
AddNewNoteWithMultipleItems
    Launch Google Keep Note App
    Add New Note With Two Items     ${title}   ${item1}   ${item2}
    page should contain text    ${title}
