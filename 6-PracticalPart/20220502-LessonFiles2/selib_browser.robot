*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Browser window
    Open Browser    https://www.artinsolutions.com    gc
#    Maximize Browser Window
    Set Window Size    1024    768