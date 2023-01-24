*** Settings ***
Library     AppiumLibrary
Resource    ../Library/Helpers/AppHelper.robot
Resource    ../Library/Helpers/AddNoteHelper.robot
Resource    ../Library/Resource/BaseTest.robot
Library     ../Library/PyLibs/Utility.py

Suite Setup   BeforeSuite  MULTI_TEST_SUITE
Suite Teardown  AfterSuite  MULTI_TEST_SUITE

Test Setup      BeforeTest
Test Teardown   AfterTest

*** Test Cases ***
AddNewNoteWithMultipleItems
    ${title}  get_random_string    5  Title
    ${item1}  get_random_string    3  Item
    ${item2}  get_random_string    3  Item

    Add New Note With Two Items     ${title}   ${item1}   ${item2}
    page should contain text    ${title}


AddNewNoteWithLongStringItems
   ${title}  get_random_string    5  Title
   ${item1}  get_random_string    15  Item
   ${item2}  get_random_string    15  Item

   Add New Note With Two Items     ${title}   ${item1}   ${item2}
   page should contain text    ${title}