# otvorte stranku https://www.artin.sk
# kliknite na test automation academy
# zistite cenu kurzu pre firmy
# overte ze hodnota kurzu pre firmy je 600 E
*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://www.artin.sk    gc
Test Teardown     Close Browser

*** Variables ***
${locator_company}    xpath=//table//tr[2]/td[1]
${locator_company_price}    xpath=//table//tr[2]/td[2]
${direct_locator}    xpath=//table//tr[contains(.,'Firmy')]/td[2]


*** Test Cases ***
Open page and validate price
    Set Window Size    1800    1000
    Click Link    Test Automation Academy
    Wait Until Page Contains Element    ${locator_company_price}
    Scroll Element Into View    ${locator_company_price}
    ${title}    Get Text   ${locator_company}
    Should Be Equal As Strings    ${title}    Firmy
    ${data}    Get Text    ${locator_company_price}
    Should Be Equal As Strings    ${data}    600€




