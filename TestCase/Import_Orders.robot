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

#   1. Navigate to Import Orders tab
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderAmazonTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_amazon_orders"]/div/div[1]

#   2. Navigate to Manual Import Orders
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderListing"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[7]/div[1]

#   3. Input Dates and Look up
    Input Text    xpath://*[@id="date-from"]    2023-06-01
    Input Text    xpath://*[@id="date-to"]    2023-08-16
    Click Button    xpath://*[@id="fetch-order"]
    Sleep    30s

#   4. Select Orders to import
#    ${checkboxes}=    Get WebElements    xpath://input[@type='checkbox']
#    ${random_index}=    Evaluate    random.randint(0, ${checkboxes.__len__()} - 1)
#    Click Element    ${checkboxes[${random_index}]}
#    ${checkboxes}=    Get WebElements    xpath=//input[@type='checkbox']
#    ${second_checkbox}=    Set Variable    ${checkboxes}[1]
    Click Element    //*[text()='408-6704218-9595556']
    Click Button    xpath://*[@id="import-order"]
    Wait Until Page Contains    SKU/Reference not found

Test UI Imported Orders page
    Open Browser, Log in and verify landing page

#   1. Navigate to Import Orders tab
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketOrderAmazonTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-toole_amt_amazon_orders"]/div/div[1]

#   2. Test - sort ID
    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[1]/th[2]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[2]
    
    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[1]/th[2]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[2]

#   3. Test - sort Amazon Order Status
    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[1]/th[4]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[4]

    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[1]/th[4]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[4]

#   4. Test - Search ID
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[2]/input    16
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[2]    16
    
    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    16

#   5. Test - Search Order ID
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[3]/input    408-0074408-1782761
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr/td[3]    408-0074408-1782761

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    408-1528820-2844345

#   6. Test - Search Amazon Order Status
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[4]/input    Canceled
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr/td[4]/span    Canceled

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    Shipped

#   7. Test - Search Channel
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[5]/input    MFN
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr/td[5]    MFN

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    MFN

#   8. Test - Search Marketplace ID
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[6]/input    A13V1IB3VIYZZH
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr/td[6]    A13V1IB3VIYZZH

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    A13V1IB3VIYZZH

#   9. Test - Search Customer
    Input Text    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[7]/input    Nigel Helliwell
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr/td[7]    Nigel Helliwell

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    Nigel Helliwell

#   10. Test - Search Imported date
    Input Text    xpath://*[@id="local_toole_amt_amazon_ordersFilter_date_add_0"]    06/09/2023
    Input Text    xpath://*[@id="local_toole_amt_amazon_ordersFilter_date_add_1"]    06/11/2023
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[9]    06/10/2023

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    05/31/2023

#   11. Test - Search Prime Order
    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[10]/select
    Click Element    xpath://*[@id="table-toole_amt_amazon_orders"]/thead/tr[2]/th[10]/select/option[3]
    Click Element    xpath://*[@id="submitFilterButtontoole_amt_amazon_orders"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_orders"]/tbody/tr[1]/td[10]    No

    Click Element    xpath://*[@name="submitResettoole_amt_amazon_orders"]
    Wait Until Page Contains    05/31/2023

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1