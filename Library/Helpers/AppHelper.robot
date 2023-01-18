*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SKIP_WELCOME}     com.google.android.keep:id/skip_welcome

*** Keywords ***
Launch Google Keep Note App
    Open Application    http://localhost:4723/wd/hub    platformName=Android
    ...     appPackage=com.google.android.keep
    ...     appActivity=com.google.android.keep.activities.BrowseActivity
    click element   ${SKIP_WELCOME}


