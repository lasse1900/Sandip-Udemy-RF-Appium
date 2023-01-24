*** Settings ***
Library     AppiumLibrary


*** Variables ***
${SKIP_WELCOME}     com.google.android.keep:id/skip_welcome


*** Keywords ***
Open Google Keep Note App
    # [Arguments]    ${APPIUM-PORT}
    # Open Application    http://localhost:${APPIUM-PORT}/wd/hub    platformName=Android
    # ...    appPackage=com.google.android.keep
    # ...    appActivity=com.google.android.keep.activities.BrowseActivity
    Open Application    http://localhost:4723/wd/hub    platformName=Android
    ...    appPackage=com.google.android.keep
    ...    appActivity=com.google.android.keep.activities.BrowseActivity
    click element    ${SKIP_WELCOME}

Close Google Keep Note App
    Close Application

Launch Google Keep Note
    launch application
    #Activate Application    app_id
    click element    ${SKIP_WELCOME}

Quit Google Keep Note
    quit application
    #Close Application
