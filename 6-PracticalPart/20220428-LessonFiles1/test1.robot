


*** Settings ***
Documentation     toto je suite dokumentacia
                  ...    pokracovanie dokumentacie
Force Tags   smoke     # pridaj tag vsade
Default Tags    aaa    # pridaj tag ak nemame
Library     Collections

*** Variables ***
${my_variable} =    Ahoj, Svet!
${my_variable_2}=    Ahoj, Svet2!
${my_variable_3}    Ahoj, Svet3!
${url}    https://www.google.com

*** Keywords ***


*** Test Cases ***
Moj Prvy test
    [Documentation]    toto je dokument string prveho testu
                       ...    sdfasdfha;fda
    [Tags]    regression
#    Set Test Variable    ${ahoj}    Ahoj, z TEST Variable
#    ${return_value}    Get Text    id=svet
    Log   ${GLOBAL_VARIABLE}
#    ${GLOBAL_VARIABLE}    Get Text     name
#    Set Global Variable    name
#    Set Suite Variable    name
#    Set Test Variable    name
#    Set Local Variable    name
    Log   ${GLOBAL_VARIABLE}
    Log   ${my_variable}
    Log   ${my_variable}
    Log   ${my_variable}
    Log   ${my_variable}
    Log   ${ahoj}

Moj Druhy test
    [Tags]    regression
    Log   ${ahoj}
    Log   ${my_variable}
    Fail    chceny fail

moj treti test
    [Tags]    quick     regression
    Log   ${my_variable}

# robot -i quick -i smoke -i regression test1.robot  > quick alebo smoke alebo regression
# robot -i quickANDsmoke test1.robot   >  obsahuje quick a zaroven smoke
# robot -i quickORsmoke test1.robot
