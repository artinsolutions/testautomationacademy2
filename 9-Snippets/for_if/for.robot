*** Test Cases ***
Standard for loop
    [Documentation]     pre RF5.0
    FOR    ${var}    IN    a    b    c    d
        Log    ${var}
        Log    test
    END
    Log    End


