*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library          AutoItLibrary3
Library          XML

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804
${FILE_PATH}     C:\\Users\\nhtnguyen\\PycharmProjects\\Automation_ToolE\\ATM_modules\\tooleamazonmarkettool_1.1.3.zip

*** Test Cases ***
Installation ToolE module
    Open Browser, Log in and verify landing page
    
#   1. Check ToolE module status is installed or uninstalled?
#   1.1. Navigate to Module Manager page
    Click Element   xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="page-header-desc-configuration-add_module"]
    
#   1.2. Search ToolE - Amazon Market Tool => Installation
    Input Text    xpath://*[@id="search-input-group"]/div[1]/div[2]/input    ToolE
    Click Element    xpath://*[@id="module-search-button"]/i
    ${module_ToolE}    Page Should Contain      ToolE - Amazon Market Tool
    Run Keyword If    '${module_ToolE}' == 'true'
    ...    Run Keyword    Installation
    ...  ELSE
    ...    Run Keyword    Uninstallation then Installation

#   2. Work around: Navigate to all pages
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[2]/a
    Page Should Contain    Associate your shop with a PrestaShop account
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[3]/a
    Page Should Contain Element    xpath://*[@id="eu-west-1_enable"]
    Click Element    xpath://*[@id="eu-west-1_enable"]
    Page Should Contain    Seller Central Authoirization
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[4]/a
    Page Should Contain Element    xpath://*[@id="us-east-1_enable"]
    Click Element    xpath://*[@id="us-east-1_enable"]
    Page Should Contain    Seller Central Authoirization

    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[5]/a
    Page Should Contain Element    xpath://*[@id="us-west-2_enable"]
    Click Element    xpath://*[@id="us-west-2_enable"]
    Page Should Contain    Seller Central Authoirization
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[6]/a
    Page Should Contain    Fulfill orders status
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[7]/a
    Page Should Contain    Use Shipping Template

    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[8]/a
    Page Should Contain    Sync Products From Prestashop
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[9]/a
    Page Should Contain    Prestashop Service API URL
    
    Click Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[10]/a
    Page Should Contain    Help Center

Close Browser
    Close Browser

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1

Installation
#   1. Click Upload a module button
    Click Link    xpath://*[@id="page-header-desc-configuration-add_module"]
    Wait Until Element Is Visible    xpath://*[@id="module-modal-import"]/div/div/div[1]/h4

#   2. Select module from your desktop
    Choose File    xpath://*[@id="importDropzone"]/input    ${FILE_PATH}
    Sleep   1 minutes
    
#   3. Navigate to ToolE conf page
    Click Element    xpath://*[@class="module-import-success-configure btn btn-primary-reverse btn-outline-primary light-button"]
    Sleep   1 minutes
    Page Should Contain Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[1]/a

Uninstallation then Installation
#   1. Click extend button
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/button

#   2. Choose Uninstall option
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/div/li[4]/form/button
    Wait Until Element Is Visible    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div

#   3. Select "Yes, uninstall it" button
    Click Element    xpath://*[@id="force_deletion"]
    Click Element    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div/div[3]/a
    Sleep   40s

#   4. Reload page
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Sleep   40s

    Installation
