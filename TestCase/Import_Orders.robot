*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library    Process
Library    Collections

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
Import Orders
    Open Browser, Log in and verify landing page

#   Navigate to Import Orders tab
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderAmazonTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_amazon_orders"]/div/div[1]

#   Navigate to Manual Import Orders
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderListing"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[7]/div[1]

#   Input Dates and Look up
    Input Text    xpath://*[@id="date-from"]    2023-06-01
    Input Text    xpath://*[@id="date-to"]    2023-08-16
    Click Button    xpath://*[@id="fetch-order"]
    Sleep    30s

#   Select Orders to import
#    ${checkboxes}=    Get WebElements    xpath://input[@type='checkbox']
#    ${random_index}=    Evaluate    random.randint(0, ${checkboxes.__len__()} - 1)
#    Click Element    ${checkboxes[${random_index}]}
#    ${checkboxes}=    Get WebElements    xpath=//input[@type='checkbox']
#    ${second_checkbox}=    Set Variable    ${checkboxes}[1]
    Click Element    //*[text()='408-6704218-9595556']
    Click Button    xpath://*[@id="import-order"]
    Wait Until Page Contains    SKU/Reference not found

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1