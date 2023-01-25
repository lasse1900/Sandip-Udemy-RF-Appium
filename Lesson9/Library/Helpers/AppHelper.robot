*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SKIP_WELCOME}     com.google.android.keep:id/skip_welcome

*** Keywords ***
Open Google Keep Note App
    [Arguments]  ${APPIUM-PORT}  ${DEVICE_UDID}
    Open Application    http://localhost:${APPIUM-PORT}/wd/hub    platformName=Android
    ...     appPackage=com.google.android.keep
    ...     appActivity=com.google.android.keep.activities.BrowseActivity
    ...     udid=${DEVICE_UDID}

Close Google Keep Note App
    Close Application

Launch Google Keep Note
    launch application
    wait until element is visible   ${SKIP_WELCOME}
    click element   ${SKIP_WELCOME}

Quit Google Keep Note
    quit application

