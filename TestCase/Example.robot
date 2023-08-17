** Settings **
Documentation    Example test suite using Selenium Library
Library           SeleniumLibrary
Library    Screenshot

** Variables **
${BROWSER}        chrome
${URL}            https://codebeautify.org/jsonviewer
${FILE_PATH}      C:\\Users\\nhtnguyen\\Documents\\ATM-ToolE\\response_1690961516890.json

** Test Cases **
Open Example Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Choose File   id=fileInput   ${FILE_PATH}
    Sleep    1 minutes

Close Browser
    Close Browser

** Keywords **
Title Should Be
    [Arguments]    ${expected_title}
    Wait Until Page Contains    ${expected_title}