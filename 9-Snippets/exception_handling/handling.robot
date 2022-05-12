*** Test Cases ***
Exepction handling simple
    TRY
        Log    start
    EXCEPT    Error message
        Log    error
    END
    Log    Konec

Exception handling full
    TRY
        Log    start
    EXCEPT    Error message
        Log    error
    EXCEPT    Error message other
        Log    error
    EXCEPT    ${variable}
        Log    error
    ELSE
        Log    runs only if no message appears
    FINALLY
        Log    run always
    END
    Log    Konec


Multiple handling
    TRY
        Log    start
    EXCEPT    error    error2    ${variable}
        Log    Error startesd
    END