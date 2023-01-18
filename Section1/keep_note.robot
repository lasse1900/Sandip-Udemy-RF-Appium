*** Settings ***
Library     AppiumLibrary

*** Variables ***
${SKIP_WELCOME}     com.google.android.keep:id/skip_welcome
${ADD_NEW_NOTE_ICON}     com.google.android.keep:id/new_list_button
${TITLE_TEXT_BOX}   com.google.android.keep:id/editable_title
${NOTE_ITEM_BOX}    //android.widget.EditText[@resource-id='com.google.android.keep:id/description']
${ADD_NEXT_ITEM}    com.google.android.keep:id/add_item_text_view
${SAVE_AND_GOHOME}  //android.widget.ImageButton[@content-desc="Navigate up"]
${ALL_NOTE_ITEM}     com.google.android.keep:id/browse_note_interior_content

*** Test Cases ***
AddNewNoteWithMultipleItems
    Open Application    http://localhost:4723/wd/hub    platformName=Android
    ...     appPackage=com.google.android.keep
    ...     appActivity=com.google.android.keep.activities.BrowseActivity
    click element   ${SKIP_WELCOME}



    wait until element is visible   ${ADD_NEW_NOTE_ICON}
    click element   ${ADD_NEW_NOTE_ICON}
    wait until element is visible   ${TITLE_TEXT_BOX}
    input text  ${TITLE_TEXT_BOX}   Python Note
    @{elements}     get webelements     ${NOTE_ITEM_BOX}
    input text  ${elements}[0]   DataType
    wait until element is visible  ${ADD_NEXT_ITEM}
    click element   ${ADD_NEXT_ITEM}
    @{elements}     get webelements     ${NOTE_ITEM_BOX}
    input text  ${elements}[1]   Methods
    click element   ${SAVE_AND_GOHOME}
    wait until element is visible   ${ADD_NEW_NOTE_ICON}

    page should contain text    Python Note

