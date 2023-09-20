*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
PS_ToolE_Amazon sync
    Open Browser, Log in and verify landing page

#   1. Navigate to FBA Sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketProductFba"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-id"]/div/div[1]

#   2. Navigate to Manual Sync
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromFba"]
    Wait Until Element Is Visible    xpath://*[@id="toole_amazon_sync_refresh"]

#   3. Click Sync Offers button
    Click Element    xpath://*[@id="toole_amazon_sync_refresh"]
    Sleep   1m

#   4. Click Show offers
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductsImportedFromFba"]
    Wait Until Element Is Visible    xpath://*[@id="form-id"]/div/div[1]

##   5. Click Sync Product button: XU-9WT6-5XAV
#    Input Text    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[2]/th[3]/input    XU-9WT6-5XAV
#    Click Element    xpath://*[@id="submitFilterButtonid"]
#    Wait Until Page Contains    XU-9WT6-5XAV
#
#    Click Link    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr/td[11]/div/a
#    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr/td[9]/span    Yes
#
##   6. Naviagate to Filter tab
#    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
#    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1
#
##   7. Click View button: XU-9WT6-5XAV
#    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    XU-9WT6-5XAV
#    Click Element    xpath://*[@id="submitFilterButtonproduct"]
#    Wait Until Page Contains    XU-9WT6-5XAV
#
##    View Price and Quantity
#
##   8. Naviagte to Summaries page
#    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketActivityLogsTab"]/a
#    Wait Until Element Is Visible    xpath://*[@id="subtab-ToolEAmazonMarketLogsSummary"]/a
#    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketLogsSummary"]/a
#    Wait Until Element Contains    xpath://*[@id="table-toole_amt_logs"]/tbody/tr[1]/td[2]    Synchronizing a product

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1

