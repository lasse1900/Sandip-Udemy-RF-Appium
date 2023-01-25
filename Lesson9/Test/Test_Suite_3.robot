*** Settings ***
Library     AppiumLibrary
Resource    ../Library/Helpers/AppHelper.robot
Resource    ../Library/Helpers/AddNoteHelper.robot
Resource    ../Library/Resource/BaseTest.robot
Library     ../Library/PyLibs/Utility.py

Suite Setup   BeforeSuite  android
Suite Teardown  AfterSuite

Test Setup      BeforeTest
Test Teardown   AfterTest

*** Test Cases ***
AddNewNoteWithMultipleItems2
    ${title}  get_random_string    9  Title
    ${item1}  get_random_string    3  Item
    ${item2}  get_random_string    3  Item

    Add New Note With Two Items     ${title}   ${item1}   ${item2}
    page should contain text    ${title}

AddNewNoteWithMultipleItems3
    ${title}  get_random_string    9  Title
    ${item1}  get_random_string    3  Item
    ${item2}  get_random_string    3  Item

    Add New Note With Two Items     ${title}   ${item1}   ${item2}
    page should contain text    ${title}