*** Settings ***
Documentation    Sample UI Test Cases
Library          SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test Cases ***
Open Browser and Verify Title
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Capture Page Screenshot
    Title Should Be    Example Domain

Verify Elements on Homepage
    [Tags]    Smoke
    Click Link    xpath://a[@href='/about']
    Capture Page Screenshot
    Page Should Contain Element    xpath://h1[text()='About']
    Page Should Contain Element    xpath://p[text()='This is an example domain']

Verify Search Functionality
    [Tags]    Regression
    Input Text    name=search    Robot Framework
    Click Button    name=submit
    Capture Page Screenshot
    Page Should Contain Element    xpath://h1[text()='Search Results']
    Page Should Contain    Robot Framework

Close Browser
    Close Browser