*** Settings ***
Test Template    Test Calculator   # iba a len 1 keyword


*** Keywords ***
Test Calculator    # kompletny test case
    [Arguments]    ${num1}    ${num2}    ${res}=5
    ${res_inner}    Evaluate    int(${num1}) + int(${num2})
    Log    Vysledok je: ${res}
    Should Be Equal As Integers    ${res_inner}    ${res}

*** Test Cases ***    NUMBER1    NUMBER2    RESULT
test1                       1          2         3
test2                      10         20        30
Nazov Testu    1    2    4
Nazov Testu2    1    2    3
Nazov Testu Bez Res    2    10
