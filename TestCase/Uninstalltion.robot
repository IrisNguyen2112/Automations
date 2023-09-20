*** Settings ***
Documentation    ATM - ToolE
Library          SeleniumLibrary
Library    Process
Library    Collections

*** Variables ***
${BROWSER}       Chrome
${URL}           http://presta804.local/admin804

*** Test cases ***
PS_Amazon_Uninstall ToolE_Optional: delete module folder after uninstall Yes
    Open Browser, Log in and verify landing page
    
#   1. Navigate to Module > Module Manager
    Click Element   xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@src="/modules/tooleamazonmarkettool/logo.png"]
    
#   2. Enter keyword on Search filed
    Input Text    xpath://*[@id="search-input-group"]/div[1]/div[2]/input    ToolE
    
#   3. Click Search button
    Click Element    xpath://*[@id="module-search-button"]
    Wait Until Page Contains    ToolE - Amazon Market Tool
    
#   4. Click extend button
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/button
    
#   5. Choose Uninstall option
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/div/li[4]/form/button
    Wait Until Element Is Visible    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div
    
#   6. Select "Cancel" button
    Click Element    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div/div[3]/input

#   7. Click extend button
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/button

#   8. Choose Uninstall option
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/div/li[4]/form/button
    Wait Until Element Is Visible    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div

#   9. Select "Yes, uninstall it" button
    Click Element    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div/div[3]/a
    Sleep   40s

#   10. Reload Module manager tab
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/h1

#   11. Enter keyword on Search filed
    Input Text    xpath://*[@id="search-input-group"]/div[1]/div[2]/input    ToolE - Amazon Market Tool

#   12. Click Search button
    Click Element    xpath://*[@id="module-search-button"]
    Wait Until Element Is Not Visible    xpath://*[@src="/modules/tooleamazonmarkettool/logo.png"]

#   13. Check the modules at C:\Users\nhtnguyen\Prestashop\presta1787\modules
    
PS_Amazon_Uninstall ToolE_Optional: delete module folder after uninstall No
    Open Browser, Log in and verify landing page

#   1. Navigate to Module > Module Manager
    Click Element   xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@id="subtab-AdminParentModulesSf"]/a
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath://*[@src="/modules/tooleamazonmarkettool/logo.png"]

#   2. Enter keyword on Search filed
    Input Text    xpath://*[@id="search-input-group"]/div[1]/div[2]/input    ToolE - Amazon Market Tool

#   3. Click Search button
    Click Element    xpath://*[@id="module-search-button"]
    Wait Until Page Contains    ToolE - Amazon Market Tool

#   4. Click extend button
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/button

#   5. Choose Uninstall option
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/div/li[4]/form/button
    Wait Until Element Is Visible    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div

#   6. Check on "Optional: delete module folder after uninstall." checbox
    Click Element    xpath://*[@id="force_deletion"]

#   7. Select "Cancel" button
    Click Element    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div/div[3]/input

#   8. Click extend button
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/button

#   9. Choose Uninstall option
    Click Element    xpath://*[@id="modules-list-container-488"]/div/div/div/div[2]/div[4]/div[2]/div/li[4]/form/button
    Wait Until Element Is Visible    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div

#   10. Check on "Optional: delete module folder after uninstall." checbox
    Click Element    xpath://*[@id="force_deletion"]

#   11. Select "Yes, uninstall it" button
    Click Element    xpath://*[@id="module-modal-confirm-tooleamazonmarkettool-uninstall"]/div/div/div[3]/a
    Sleep   40s

#   12. Reload Module manager tab
    Click Link  xpath://*[@id="subtab-AdminModulesSf"]/a
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[1]/div/h1

#   13. Enter keyword on Search filed
    Input Text    xpath://*[@id="search-input-group"]/div[1]/div[2]/input    ToolE - Amazon Market Tool

#   14. Click Search button
    Click Element    xpath://*[@id="module-search-button"]
    Wait Until Element Is Not Visible    xpath://*[@src="/modules/tooleamazonmarkettool/logo.png"]

#   15. Check the modules at C:\Users\nhtnguyen\Prestashop\presta1787\modules

*** Keywords ***
Open Browser, Log in and verify landing page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    xpath://*[@id="logo"]
    Input Text    xpath://*[@id="email"]    tester@inter-soft.com
    Input Password    xpath://*[@id="passwd"]    Nguyen@211220
    Click Button    xpath://*[@id="submit_login"]
    Wait Until Element Is Visible    xpath://*[@id="content"]/div[1]/div/div/h1