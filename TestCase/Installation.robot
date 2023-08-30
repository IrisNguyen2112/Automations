*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library          AutoItLibrary3

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804
${FILE_PATH}     C:\\Users\\nhtnguyen\\PycharmProjects\\Automation_ToolE\\ATM_modules\\tooleamazonmarkettool_1.1.1.zip

*** Test Cases ***
Installation ToolE module
    Open Browser, Log in and verify landing page
    
#   1. Navigate to Module > Module Manager
    Click Element   xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="page-header-desc-configuration-add_module"]
    
#   2. Click Upload a module button
    Click Link    xpath://*[@id="page-header-desc-configuration-add_module"]
    Wait Until Element Is Visible    xpath://*[@id="module-modal-import"]/div/div/div[1]/h4

#   3. Select module from your desktop
    Choose File    xpath://*[@id="importDropzone"]/input    ${FILE_PATH}
    Sleep   1 minutes
    
#   4. Navigate to ToolE conf page
    Click Element    xpath://*[@class="module-import-success-configure btn btn-primary-reverse btn-outline-primary light-button"]
    Sleep   1 minutes
    Page Should Contain Element    xpath://*[@id="tooleamazonmarkettool_form"]/div/div[1]/ul/li[1]/a

#   Work around: Navigate to all pages
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
