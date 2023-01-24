*** Settings ***
Library     ../PyLibs/AppiumManager.py
Resource    ../Helpers/AppHelper.robot

*** Keywords ***
BeforeSuite
    [Arguments]  ${SUITE_NAME}
    ${APPIUM-PORT}  start_appium_server  ${SUITE_NAME}
    Open Google Keep Note App  # ${APPIUM-PORT}

AfterSuite
    [Arguments]  ${SUITE_NAME}
    Close Google Keep Note App
    kill_appium_server  ${SUITE_NAME}

BeforeTest
    Launch Google Keep Note

AfterTest
    Quit Google Keep Note


