*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://www.artinsolutions.sk    gc
Test Teardown     Close Browser

*** Test Cases ***
Click on contact tab and validate
    Set Window Size    1850    1000
    Wait Until Page Contains   Tvoríme IT riešenia
    Wait Until Page Contains Element   id=menu-item-3078    timeout=2s
    Click Element    id=menu-item-3078
    Wait Until Page Contains    Dúbravská cesta 2
#    Click Element    name=menu-item-3078
#    Click Element    name:menu-item-3078
#    Click Element    id:menu-item-3078
    #  name="sss"
    #  id="sss"

Click on contact tab and validate ENG
    Go To    https://www.artinsolutions.com
    Set Window Size    1850    1000
    Wait Until Page Contains Element   id=menu-item-3078    timeout=2s
    Click Element    id=menu-item-3078
    Wait Until Page Contains Element    id=header

 Click on contact tab and validate ENG
    [Tags]    runme
    Go To    https://www.artinsolutions.com
    Set Window Size    1850    1000
    Wait Until Page Contains Element   xpath=/html/body
    Click Element    id=menu-item-3078
    ${text}    Get Text    id=menu-item-3078
    Wait Until Page Contains Element    id=header
