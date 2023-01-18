*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ADD_NEW_NOTE_ICON}     com.google.android.keep:id/new_list_button
${TITLE_TEXT_BOX}   com.google.android.keep:id/editable_title
${NOTE_ITEM_BOX}    //android.widget.EditText[@resource-id='com.google.android.keep:id/description']
${ADD_NEXT_ITEM}    com.google.android.keep:id/add_item_text_view
${SAVE_AND_GOHOME}  //android.widget.ImageButton[@content-desc="Navigate up"]

*** Keywords ***
Add New Note With Two Items
    [Arguments]     ${TITLE}    ${ITEM-1}   ${ITEM-2}
    wait until element is visible   ${ADD_NEW_NOTE_ICON}
    click element   ${ADD_NEW_NOTE_ICON}
    Sleep    1
    wait until element is visible   ${TITLE_TEXT_BOX}
    input text  ${TITLE_TEXT_BOX}   ${TITLE}
    @{elements}     get webelements     ${NOTE_ITEM_BOX}
    input text  ${elements}[0]   ${ITEM-1}
    wait until element is visible  ${ADD_NEXT_ITEM}
    click element   ${ADD_NEXT_ITEM}
    @{elements}     get webelements     ${NOTE_ITEM_BOX}
    input text  ${elements}[1]   ${ITEM-2}
    click element   ${SAVE_AND_GOHOME}
    wait until element is visible   ${ADD_NEW_NOTE_ICON}