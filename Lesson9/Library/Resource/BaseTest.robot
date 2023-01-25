*** Settings ***
Resource     ResourceManager.robot
Library     ../PyLibs/AppiumManager.py
Resource    ../Helpers/AppHelper.robot

*** Keywords ***
BeforeSuite
    [Arguments]  ${DEVICE_TYPE}
    ${PORT}  ${ID}   ReserveDevice  ${DEVICE_TYPE}
    start_appium_server  ${PORT}
    Open Google Keep Note App  ${PORT}  ${ID}

AfterSuite
    Close Google Keep Note App
    kill_appium_server
    ReleaseDevice

BeforeTest
    Launch Google Keep Note

AfterTest
    Quit Google Keep Note


