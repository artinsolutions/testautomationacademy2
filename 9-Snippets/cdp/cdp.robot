*** Settings ***
Library    SeleniumLibrary
Library    cdp_kw.py
Test Teardown    Close Browser


*** Test Cases ***
Set Browser Offline
    # https://chromedevtools.github.io/devtools-protocol/
    Open Browser    https://www.root.cz    gc
#    ${res}    Execute CDP    Network.emulateNetworkConditions    {"offline": True, "latency": 5000, "downloadThroughput": 100, "uploadThroughput": 100}
#    ${res}    Execute CDP    Emulation.setGeolocationOverride    {"latitude": 47.1928242, "longitude": -125.3686088}

    ${res}    Execute CDP    Emulation.setDeviceMetricsOverride     {"width": 1024, "height": 768, "deviceScaleFactor": 2, "mobile": True}
    Reload Page
#    Go To    https://maps.google.com
#    Click Element    xpath://span[text()='I agree']
    Sleep    20 s



