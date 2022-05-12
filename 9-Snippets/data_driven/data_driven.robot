*** Keywords ***
Test Calculator
    [Arguments]    ${num1}    ${num2}    ${res}
    ${res_inner}    Evaluate    int(${num1}) + int(${num2})
    Log    Vysledok je: ${res}
    Should Be Equal As Integers    ${res_inner}    ${res}


*** Test Cases ***
Simple Calculator
    [Template]    Test Calculator
    1    2    3
    5   10   15
    2   -4    -2


Simple Calculator 2    1    4    5
    [Template]    Test Calculator