*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library          Process
Library          Collections
Library          OperatingSystem
Library          BuiltIn

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804
${AmazonSeller}  https://sellercentral.amazon.com/inventory/ref=xx_invmgr_dnav_xx?tbla_myitable=sort:%7B%22sortOrder%22%3A%22DESCENDING%22%2C%22sortedColumnId%22%3A%22date%22%7D;search:;pagination:1;

# Download Feeds
${DOWNLOAD_PATH}    /Downloads
${FILE_NAME}        POST_INVENTORY_AVAILABILITY_DATA_60417019598.xml
${WAIT_TIMEOUT}     60
${WAIT_INTERVAL}    2

*** Test cases ***
1. PS_ToolE_Prestashop Sync_Products
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Catalog > Filters
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

#   2. Enable products by clicking on the mark in the Prestashop sync column: Wall HLD2221
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    Wall HLD2221
    Click Element    xpath://*[@id="submitFilterButtonproduct"]
    Wait Until Page Contains    Wall HLD2221

    Click Element    xpath://*[@id="table-product"]/tbody/tr/td[7]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr/td[7]/a

#   3. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Page Contains    Wall HLD2221
#    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]

#   4. Enter on Product ID search field: 21 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[2]/input    21
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Wall HLD2221
    
    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Wall HLD2221

#   5. Enter on Product Attribute search field: 0 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    10
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    10

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Wall HLD2221

#   6. Enter on SKU search field: 123ccTEST > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[4]/input    123ccTEST
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Wall HLD2221

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Wall HLD2221
    
#   7. Enter on Product Name search field: Wall HLD2221
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Wall HLD2221
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Wall HLD2221

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Wall HLD2221

#   8. Click Quantity for sort
#   9. Click Price for sort
#   10. Navigate to Amazon Market Tool > Catalog > Filters
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

#   11. Disable products by clicking on the mark in the Prestashop sync column
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    Wall HLD2221
    Click Element    xpath://*[@id="submitFilterButtonproduct"]
    Wait Until Page Contains    Wall HLD2221

    Click Element    xpath://*[@id="table-product"]/tbody/tr/td[7]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr/td[7]/a
    
#   12. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]

    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Wall HLD2221
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Element Is Visible    xpath://*[@class="list-empty-msg"]

2. PS_ToolE_Prestashop Sync_Manufacturers
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Catalog > Filters > Manufacturers page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersManufacturers"]
    Wait Until Element Is Visible    xpath://*[@id="form-manufacturer"]/div/div[1]

#   2. Enable products by clicking on the mark in the Prestashop sync column: Studio Design
    Input Text    xpath://*[@id="table-manufacturer"]/thead/tr[2]/th[3]/input   Studio Design
    Click Element    xpath://*[@id="submitFilterButtonmanufacturer"]
    Wait Until Page Contains    Studio Design

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   3. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Page Contains    Customizable mug

#   4. Enter on Product ID search field: 19 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[2]/input    19
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   5. Enter on Product Attribute search field: 10 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    10
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    10

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   6. Enter on SKU search field: demo_17
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[4]/input    demo_17
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Hummingbird cushion

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   7. Enter on Product Name search field: Customizable mug
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Customizable mug

#   8. Click Quantity for sort
#   9. Click Price for sort
#   10. Navigate to Amazon Market Tool > Catalog > Filters > Manufacturers page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersManufacturers"]
    Wait Until Element Is Visible    xpath://*[@id="form-manufacturer"]/div/div[1]

#   11. Disable products by clicking on the mark in the Prestashop sync column
    Input Text    xpath://*[@id="table-manufacturer"]/thead/tr[2]/th[3]/input   Studio Design
    Click Element    //*[@id="submitFilterButtonmanufacturer"]
    Wait Until Page Contains    Studio Design

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   12. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]

    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Element Is Visible    xpath://*[@class="list-empty-msg"]

3. PS_ToolE_Prestashop Sync_Manufacturers
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Catalog > Filters > Suppliers page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersSuppliers"]
    Wait Until Element Is Visible    xpath://*[@id="form-supplier"]/div/div[1]

#   2. Enable products by clicking on the mark in the Prestashop sync column: Accessories supplier
    Input Text    xpath://*[@id="table-supplier"]/thead/tr[2]/th[3]/input   Accessories supplier
    Click Element    xpath://*[@id="submitFilterButtonsupplier"]
    Wait Until Page Contains    Accessories supplier

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   3. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Page Contains    Customizable mug

#   4. Enter on Product ID search field: 19 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[2]/input    19
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   5. Enter on Product Attribute search field: 10 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    10
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    10

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   6. Enter on SKU search field: demo_17
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[4]/input    demo_17
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Hummingbird cushion

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   7. Enter on Product Name search field: Customizable mug
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Customizable mug

#   8. Click Quantity for sort
#   9. Click Price for sort
#   10. Navigate to Amazon Market Tool > Catalog > Filters > Suppliers page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersSuppliers"]
    Wait Until Element Is Visible    xpath://*[@id="form-supplier"]/div/div[1]

#   11. Disable products by clicking on the mark in the Prestashop sync column
    Input Text    xpath://*[@id="table-supplier"]/thead/tr[2]/th[3]/input   Accessories supplier
    Click Element    xpath://*[@id="submitFilterButtonsupplier"]
    Wait Until Page Contains    Accessories supplier

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   12. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]

    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Element Is Visible    xpath://*[@class="list-empty-msg"]

4. PS_ToolE_Prestashop Sync_Categories
    Open Browser, Log in and verify landing page

#   1. Navigate to Amazon Market Tool > Catalog > Filters > Categories page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersCategories"]
    Wait Until Element Is Visible    xpath://*[@id="form-category"]/div/div[1]

#   2. Enable products by clicking on the mark in the Prestashop sync column: Home
    Input Text    xpath://*[@id="table-category"]/thead/tr[2]/th[3]/input   Home
    Click Element    xpath://*[@id="submitFilterButtoncategory"]
    Wait Until Page Contains    Home

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   3. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Page Contains    Customizable mug

#   4. Enter on Product ID search field: 19 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[2]/input    19
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   5. Enter on Product Attribute search field: 10 > Click Search button
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[3]/input    10
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    10

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   6. Enter on SKU search field: demo_17
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[4]/input    demo_17
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Hummingbird cushion

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Hummingbird printed t-shirt

#   7. Enter on Product Name search field: Customizable mug
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Customizable mug

    Click Element    xpath://*[@id="table-product"]/thead/tr[2]/th[8]/span/button[2]
    Wait Until Page Contains    Customizable mug

#   8. Click Quantity for sort
#   9. Click Price for sort
#   10. Navigate to Amazon Market Tool > Catalog > Filters > Suppliers page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1

    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersSuppliers"]
    Wait Until Element Is Visible    xpath://*[@id="form-supplier"]/div/div[1]

#   11. Disable products by clicking on the mark in the Prestashop sync column
    Input Text    xpath://*[@id="table-supplier"]/thead/tr[2]/th[3]/input   Accessories supplier
    Click Element    xpath://*[@id="submitFilterButtonsupplier"]
    Wait Until Page Contains    Accessories supplier

    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr/td[5]/a

#   12. Navigate to Prestashop sync
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]

    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Customizable mug
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Element Is Visible    xpath://*[@class="list-empty-msg"]

5. PS_ToolE_Prestashop Sync_Export product_Prestashop sync enable
    Open Browser, Log in and verify landing page
    
#   1. Navigate to Amazon Market Tool > Catalog > Prestashop sync page
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketProductSyncFromPrestashop"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-identifier_key"]/div/div[1]
    
#   2. Click Export button: Product name: Wall HLD2221, Price: 12000000.000000, Quantity: 50
    Input Text    xpath://*[@id="table-product"]/thead/tr[2]/th[5]/input    Wall HLD2221
    Click Element    xpath://*[@id="submitFilterButtonidentifier_key"]
    Wait Until Page Contains    Wall HLD2221
    
    Click Element    xpath://*[@id="table-product"]/tbody/tr/td[8]/div/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[2]/div
    
#   3. Navigate to Summaries tab and verify log
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketActivityLogsTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketLogsSummary"]/a
    Wait Until Element Is Visible    xpath://*[@id="form-id"]/div/div[1]
    
    Input Text    xpath://*[@id="table-toole_amt_logs"]/thead/tr[2]/th[2]/input    Export product
    Wait Until Page Contains    Export product
    
    Click Element    xpath://*[@class="table toole_amt_logs"]/tbody/tr[1]/td[9]/div/a
    Wait Until Element Is Visible    xpath://*[@id="toole-summary-modal"]/div/div[1]/div[2]
    Click Element    xpath://*[@id="toole-summary-modal"]/div/div[1]/div[4]/button
    Wait Until Element Is Visible    xpath://*[@id="form-id"]/div/div[1]
    
#   4. Navigate to Feeds
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketFeed"]/a
    Wait Until Page Contains    POST_INVENTORY_AVAILABILITY_DATA
    
#   5. Click Feeds button: POST_INVENTORY_AVAILABILITY_DATA, POST_PRODUCT_PRICING_DATA
    Input Text    xpath://*[@id="table-toole_amt_feeds"]/thead/tr[2]/th[3]/input    POST_INVENTORY_AVAILABILITY_DATA
    Click Element    xpath://*[@id="submitFilterButtonid"]
    Wait Until Page Contains    POST_INVENTORY_AVAILABILITY_DATA
    
    Click Element    xpath://*[@id="table-toole_amt_feeds"]/tbody/tr[1]/td[12]/div/div/a
    Wait for Feeds to Download  ${DOWNLOAD_PATH}/${FILE_NAME}

#   6. Click on expand button
#   7. Click on Result button
#   8. Search product on Amazon seller
     Open Browser    ${AmazonSeller}    ${BROWSER}
     Input Text    xpath://*[@id="myitable-search"]    123ccTEST
     Click Element    xpath://*[@id="myitable-search-button"]/span/input
     Wait Until Element Contains    //*[@id="MDYtWVpaSy00VzFL-quantity-quantity"]/div/span/input    50

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1

Wait for Feeds to Download
    [Arguments]    ${file_path}    ${timeout}=${WAIT_TIMEOUT}    ${interval}=${WAIT_INTERVAL}
    Wait Until Keyword Succeeds    ${timeout}s    ${interval}s    File Should Exist    ${file_path}