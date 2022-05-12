*** Keywords ***
Keyword with return value
    [Documentation]    Keywords gets two numbers and return their addition
    [Arguments]    ${num1}    ${num2}
    Log    Inputs for keyword are: ${num1} ${num2}
    ${result}    Evaluate    ${num1} + ${num2}
    [Return]    ${result}



*** Test Cases ***
Test keyword with return value
    ${addition}    Keyword with return value    1    4
    Log    Result of addition is: ${addition}
    Should Be Equal As Integers    ${addition}    5
