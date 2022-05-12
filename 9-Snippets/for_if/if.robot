*** Variables ***
${number}    ${10}

*** Test Cases ***
Usage of if
    IF    ${number} > 10
        Pass Execution
    ELSE IF    ${number} < 10
        Fail
    ELSE IF    ${number} == 10
        Log    10
    ELSE
        Log   neplati nic
    END


Inline IF/ELSE IF/ELSE
    IF    $cond1    Keyword 1    ELSE IF    $cond2    Keyword 2    ELSE IF    $cond3    Keyword 3    ELSE    Keyword 4

Inline IF/ELSE
    IF    $condition    Keyword    argument    ELSE    Another Keyword

Inline IF
    IF    $condition1    Keyword    argument
    IF    $condition2    RETURN