*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://www.artinsolutions.sk    ${BROWSER}
Test Teardown     Close Browser
Suite Setup    Log   SUITE SETUP
Suite Teardown     Log    SUITE TEARDOWN

*** Test Cases ***
Otvor
    [Documentation]    Open artinsolutions.sk webpage and check if it is open.
#    Sleep     35 sec     # caka vzdy
#    Sleep     5   # seconds
    # sec, ms, m,
    Wait Until Page Contains    Tvoríme IT riešenia     timeout=2 sec    # iba do doby, ak je splnena podmienka
#    Page Should Contain    Tvoríme IT riešenia

Otvor stranku a zvaliduj menu
    [Teardown]    Log    otvor stranku a zvaliduj menu teardown
    [Tags]    fullhd
    Set Window Size    1920    1080
    Wait Until Page Contains    O nás    timeout=2 sec    # iba do doby, ak je splnena podmienka
    Wait Until Page Contains    Test Automation Academy    timeout=2 sec    # iba do doby, ak je splnena podmienka

# DU: rerunfailed
Otvor stranku a zvaliduj menu mobil
    [Teardown]    Log    otvor stranku a zvaliduj menu teardown
    [Tags]    mobile
    Set Window Size    1024    768
    Wait Until Page Contains    Tvoríme IT riešenia     timeout=2 sec    # iba do doby, ak je splnena podmienka

# DU: rerunfailed
