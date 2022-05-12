*** Settings ***
Library     Remote    localhost:5005     # XML/RPC  xml    robotframework-remoteserver   C#


*** Test Cases ***
Test of remote library
    ${res}    Get Os Name
    Log    ${res}