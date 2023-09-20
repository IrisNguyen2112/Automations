*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library    Process
Library    Collections

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
Filter tab
    Open Browser, Log in and verify landing page

#   Navigate to Filter tab > PRODUCTS
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogTab"]/a
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFilters"]/a
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div[1]/h1
    
#   Enable Amazon sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[1]/td[6]/a

#   Disable Amazon sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[1]/td[6]/a

#   Enable Prestashop sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[2]/td[7]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[2]/td[7]/a

#   Disable Prestashop sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[2]/td[7]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[2]/td[7]/a

#   Enable FBA sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[3]/td[8]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[3]/td[8]/a

#   Disable FBA sync
    Click Element    xpath://*[@id="table-product"]/tbody/tr[3]/td[8]/a
    Wait Until Element Is Visible    xpath://*[@id="table-product"]/tbody/tr[3]/td[8]/a

#   Navigate to Filter tab > MANUFACTURES
    Click Element    xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersManufacturers"]
    Wait Until Element Is Visible    xpath://*[@id="form-manufacturer"]/div/div[1]

#   Enable Amazon sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[4]/a

#   Disable Amazon sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[4]/a

#   Enable Prestashop sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[5]/a

#   Disable Prestashop sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[5]/a

#   Enable FBA sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[6]/a

#   Disable FBA sync
    Click Element    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-manufacturer"]/tbody/tr[2]/td[6]/a

#   Navigate to Filter tab > SUPPLIERS
    Click Element   xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersSuppliers"]
    Wait Until Element Is Visible    xpath://*[@id="form-supplier"]/div/div[1]

#   Enable Amazon sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[4]/a

#   Disable Amazon sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[4]/a

#   Enable Prestashop sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[5]/a

#   Disable Prestashop sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[5]/a

#   Enable FBA sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[6]/a

#   Disable FBA sync
    Click Element    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-supplier"]/tbody/tr[1]/td[6]/a

#   Navigate to Filter tab > CATEGORIES
    Click Element   xpath://*[@id="subtab-ToolEAmazonMarketCatalogFiltersCategories"]
    Wait Until Element Is Visible    xpath://*[@id="form-category"]/div/div[1]

#   Enable Amazon sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[4]/a

#   Disable Amazon sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[4]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[4]/a

#   Enable Prestashop sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[5]/a

#   Disable Prestashop sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[5]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[5]/a

#   Enable FBA sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[6]/a

#   Disable FBA sync
    Click Element    xpath://*[@id="table-category"]/tbody/tr[1]/td[6]/a
    Wait Until Element Is Visible    xpath://*[@id="table-category"]/tbody/tr[1]/td[6]/a

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1