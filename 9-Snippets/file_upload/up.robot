*** Settings ***
Library    SeleniumLibrary
Library    custom_kw.py
Test Teardown    Close Browser


*** Test Cases ***
Upload file
    Open Browser    https://uloz.to/sem    gc
    Upload File Own    //input[@type='file']     ${CURDIR}${/}up.robot
    Sleep    2 s


Upload File 2
    Open Browser    https://uloz.to/sem    gc
    Choose File    //input[@type='file']    ${CURDIR}${/}up.robot
    Sleep    2 s
