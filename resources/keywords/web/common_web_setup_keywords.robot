*** Settings ***
Resource            ../../variables/web/common_web_setup_variables.robot


*** Keywords ***
Set Browser
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Set Speed
    Set Selenium Speed    ${BROWSER_SPEED}
    Set Selenium Timeout    ${TIMEOUT}

Initialization
    Set Browser
    Set Speed


Terminate Run
    Set Speed
#    Close Browser

User Navigate to the Testing Form
    Go To    ${URL}
