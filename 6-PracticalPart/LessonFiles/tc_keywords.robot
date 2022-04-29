*** Keywords ***
Otvor browser na google.sk
    [Documentation]    otvorim chrome a idem na google.sk
    Log    Ahoj svet, vlastny keyword
    Log    Ahoj svet, vlastny

#${a}   get text
#Page Should COntain   ${a}
#Skontroluj ci item ma hodnotu test1
#    Page Should Contain    test1

Nazov mojho keywordu 2
    Log    Ahoj svet, vlastny keyword 2
    Log    Ahoj svet, vlastny 2

Otvor stranku na webe
    [Arguments]    ${stranka}    ${browser}=gc
    Log     ${stranka}
    Open Browser    ${stranka}   ${browser}

Otvor stranku na webe https://sme.sk prehliadacom firefox
    Log    Otvaram stranku

Otvor stranku na webe ${stranka} prehliadacom ${browser}
    Log    ${stranka}
    Log    ${browser}


*** Test Cases ***
Moj otvor test
    Otvor stranku na webe    https://sme.sk
    Otvor stranku na webe    https://sme.sk    ff
    Otvor stranku na webe https://sme.sk prehliadacom firefox

Moj novy test 1
    Otvor browser na google.sk
    Nazov mojho keywordu 2