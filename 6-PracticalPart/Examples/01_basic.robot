*** Test Cases ***
Moj prvy test
    [Documentation]    toto je nejaky zakladny popis testu
    [Tags]    regression    full
    Set Log Level    TRACE
    Log    Hello, world!    level=TRACE
    Log    Log2

Moj druhy test
    [Documentation]    toto je nejaky zakladny popis testu 2
    [Tags]    smoke    full
    Log    Moj druhy test    level=DEBUG