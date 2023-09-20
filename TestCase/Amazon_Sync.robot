*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
PS_ToolE_Amazon sync
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-ToolEAmazonMarketProduct"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketProduct"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1
    
#   2. Navigate to Manual Sync
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromAmazon"]
    Wait Until Element Is Visible    xpath://*[@id="toole_amazon_sync_refresh"]
    
#   3. Click Sync Offers button
    Click Element    xpath://*[@id="toole_amazon_sync_refresh"]
    Sleep   1m

#   4. Click Show offers
    Click Element    xpath://*[@id="toole_amazon_show_offers"]
    Wait Until Element Is Visible    xpath://*[@id="form-id"]/div/div[1]
    
#   5. Click Sync Product button: XU-9WT6-5XAV
    Input Text    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[2]/th[3]/input    XU-9WT6-5XAV
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Page Contains    XU-9WT6-5XAV
    
    Click Link    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr/td[11]/div/a
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr/td[9]/span    Yes
    
#   6. Naviagate to Filter tab
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1
    
#   7. Click View button: XU-9WT6-5XAV
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    XU-9WT6-5XAV
    Click Element    xpath://*[@id="submitFilterButtonproduct"]
    Wait Until Page Contains    XU-9WT6-5XAV

#    View Price and Quantity
    
#   8. Naviagte to Summaries page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketActivityLogsTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-ToolEAmazonMarketLogsSummary"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketLogsSummary"]/a
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_logs"]/tbody/tr[1]/td[2]    Synchronizing a product

Test UI Imported Offers page
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-ToolEAmazonMarketProduct"]/a
    Click Link    xpath://*[@id="subtab-ToolEAmazonMarketProduct"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

#   2. Test sort ID
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[2]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[2]
    
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[2]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[2]

#   3. Test sort Amazon SKU
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[3]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[3]
    
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[3]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[3]

#   4. Test sort Name
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[4]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[4]

    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[4]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[4]

#   5. Test sort Quantity
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[6]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[6]

    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[6]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[6]

#   6. Test sort Price
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[7]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[7]

    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[7]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[7]

#   7. Test sort Adjustment Date
    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[10]/span/a[1]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[10]

    Click Element    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[1]/th[10]/span/a[2]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[10]

#   8. Test Search Amazon SKU
    Input Text    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[2]/th[3]/input    06-YZZK-4W1K
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[3]    06-YZZK-4W1K
    
    Click Element    xpath://*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[3]

#   9. Test Search Name
    Input Text    xpath://*[@id="table-toole_amt_amazon_products"]/thead/tr[2]/th[4]/input    Bathroom shelve (RED)
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[4]    Bathroom shelve (RED)

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[4]

#   10. Test Search Mapping - Unavailable
    Click Element    xpath://*[@name="idFilter_a!is_mapped"]
    Click Element    xpath://*[@value="0" and text()='Unavailable']
    Wait Until Element Contains    xpath://*[@name="idFilter_a!is_mapped"]    Unavailable
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span    Unavailable

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span

#   11. Test Search Mapping - Can be synced
    Click Element    xpath://*[@name="idFilter_a!is_mapped"]
    Click Element    xpath://*[@value="2" and text()='Can be synced']
    Wait Until Element Contains    xpath://*[@name="idFilter_a!is_mapped"]    Can be synced
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span    Can be synced

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span

#   12. Test Search Mapping - Not Enabled
    Click Element    xpath://*[@name="idFilter_a!is_mapped"]
    Click Element    xpath://*[@value="1" and text()='Not Enabled']
    Wait Until Element Contains    xpath://*[@name="idFilter_a!is_mapped"]    Not Enabled
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span    Not Enabled

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[8]/span/span

#   13. Test Search Sync - Yes
    Click Element    xpath://*[@name="idFilter_a!is_synced"]
    Click Element    xpath://*[@value="0" and text()='Yes']
    Wait Until Element Contains    xpath://*[@name="idFilter_a!is_synced"]   Yes
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[9]/span    Yes

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[9]/span

#   14. Test Search Sync - No
    Click Element    xpath://*[@name="idFilter_a!is_synced"]
    Click Element    xpath://*[@value="1" and text()='No']
    Wait Until Element Contains    xpath://*[@name="idFilter_a!is_synced"]   No
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Element Contains    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[9]/span    No

    Click Element    xpath:///*[@name="submitResetid"]
    Wait Until Element Is Visible    xpath://*[@id="table-toole_amt_amazon_products"]/tbody/tr[1]/td[9]/span

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1

