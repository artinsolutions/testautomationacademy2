*** Variables ***
${x}    20

*** Test Cases ***
simple while
    WHILE    ${x} > 0:
        Log    ${x}
        ${x}    Evaluate    ${x} - 1
    END

BREAK and CONTINUE
    WHILE    True
        Log    ${x}
        ${x} =    Evaluate    ${x} - 1
        IF    ${x} == 0
            Log    We are done!
            BREAK
        END
        IF    ${x} % 2 == 0    CONTINUE    # New inline IF.
        Log    Only executed if ${x} is odd.
    END

*** Keywords ***
Keyword with WHILE using RETURN
    WHILE    True
        ${x} =    Evaluate    ${x} - 1
        IF    ${x} == 5    RETURN    ${x}
    END
    Fail    This is not executed

Keyword with WHILE using RETURN
    WHILE    True
        ${x} =    Evaluate    ${x} - 1
        IF    ${x} == 5    RETURN
    END
    Fail    This is not executed