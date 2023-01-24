*** Settings ***
Library     ../PyLibs/AppiumManager.py
Resource    ../Helpers/AppHelper.robot


*** Keywords ***
BeforeSuite
    # [Arguments]    ${SUITE_NAME}
    # ${APPIUM-PORT}    start_appium_server    ${SUITE_NAME}
    # Open Google Keep Note App    ${APPIUM-PORT}
    Open Google Keep Note App
    #Add New Note With Two Items    ${NOTE_TITLE}    ${ITEM-1}    ${ITEM-2}
    #page should contain text    ${NOTE_TITLE}

AfterSuite
    [Arguments]    ${SUITE_NAME}
    Close Google Keep Note App
    kill_appium_server    ${SUITE_NAME}

BeforeTest
    Launch Google Keep Note

AfterTest
    Quit Google Keep Note
