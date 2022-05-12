*** Settings ***
#Library    keywords.py
Library    KeywordClass.py    AHOJ SVET

*** Test Cases ***
Only Test of kw
#    ${res}    Only Log
#    ${res2}    My Own Function   # my own function, MY OWN Function
#    Log    Result from ONLY LOG: ${res}
    My Own Keyword
    My Class Keyword    Tomas
    My Class Kw 2    param1    param2    param3