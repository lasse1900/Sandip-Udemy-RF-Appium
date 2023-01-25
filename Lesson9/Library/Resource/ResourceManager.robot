*** Settings ***
Library     pabot.PabotLib

*** Variables ***
${ID_ATTR}  id
${PORT_ATTR}  appium_port

*** Keywords ***
ReserveDevice
    [Arguments]  ${DEVICE_TYPE}
    Acquire Value Set  ${DEVICE_TYPE}
    ${PORT}  Get Value From Set  ${PORT_ATTR}
    ${ID}    Get Value From Set  ${ID_ATTR}
    [Return]  ${PORT}  ${ID}

ReleaseDevice
    Release Value Set





