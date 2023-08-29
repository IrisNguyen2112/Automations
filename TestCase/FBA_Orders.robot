*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library    Process
Library    Collections

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
1. PS_ToolE_Create FBA Orders_Non-FBA Orders on Amazon
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Orders > FBA Orders
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketFbaOrderTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-orders"]/div/div[1]

#   2. Click expand button
    Click Element    xpath://*[@id="table-orders"]/tbody/tr[1]/td[8]/div/div/button

#   3. Click Create a FBA Order button
    Click Element    xpath://*[@id="table-orders"]/tbody/tr[1]/td[8]/div/div/ul/li/a
    Wait Until Page Contains    xxxxxxxxxxxx

#   4. Navigate to FBA Orders
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketFbaOrderSynced"]
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_fba_orders"]/div/div[1]

#   5. View FBA Orders
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketFbaOrderSynced"]
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_fba_orders"]/div/div[1]
    
#    Click Element    xpath://*[@id="table-toole_amt_fba_orders"]/tbody/tr/td[7]/div/div/a
#    Click Link    xpath://*[@id="table-toole_amt_fba_orders"]/tbody/tr/td[7]/div/div/a    # This opens a link in a new tab
#    Wait Until Keyword Succeeds    5s    1s    Check New Tab

#   6. Update Status FBA Orders
    Click Element    xpath://*[@id="table-toole_amt_fba_orders"]/tbody/tr/td[7]/div/div/button/i
    Click Element    xpath://*[@id="table-toole_amt_fba_orders"]/tbody/tr/td[7]/div/div/ul/li[1]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[2]/div

2. PS_ToolE_Create FBA Orders_FBA Orders on Amazon
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Orders > FBA Orders
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketFbaOrderTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-orders"]/div/div[1]

#   2. Click expand button
    Click Element    xpath://*[@id="table-orders"]/tbody/tr[1]/td[8]/div/div/button

#   3. Click Create a FBA Order button
    Click Element    xpath://*[@id="table-orders"]/tbody/tr[1]/td[8]/div/div/ul/li/a
    Wait Until Page Contains    There are 2 errors

#   4. Navigate to FBA Orders
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketFbaOrderSynced"]
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_fba_orders"]/div/div[1]

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1

#Check New Tab
#    ${handles}    Get Window Handles
#    Run Keyword If    ${handles}.__len__() > 1    Pass Execution    # New tab is opened
#    [Return] From Keyword    # Retry if new tab is not opened yet