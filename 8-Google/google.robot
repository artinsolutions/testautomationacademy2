*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Google And Accept Cookies
Test Teardown    Close Browser


*** Keywords ***
Open Google And Accept Cookies
    Open Browser    https://www.google.com     gc
    Click Element    L2AGLb

*** Keywords ***
Search For
    [Arguments]    ${search_phrase}
    [Documentation]    Types in ${search_phrase} into google search bar and hits `Google Search` button to submit it.
    Sleep    1 s
    Input Text    name=q    ${search_phrase}
    Wait Until Element Is Visible    xpath=//div[@class='CqAVzb lJ9FBc']//input[@name='btnK']
    Click Element    xpath=//div[@class='CqAVzb lJ9FBc']//input[@name='btnK']


Search For Using Enter As Submit
    [Arguments]    ${search_phrase}
    [Documentation]    Types in ${search_phrase} into google search bar and hits Enter to submit it
    Sleep    1 s
    Input Text    name=q    ${search_phrase}
    Wait Until Element Is Visible    xpath=//div[@class='CqAVzb lJ9FBc']//input[@name='btnK']
    Press Keys    name=q    RETURN


Search For And Validate Results
    [Arguments]    ${search_phrase}    @{args}
    Search For    ${search_phrase}
    FOR    ${text}    IN    @{args}
        Wait Until Page Contains    ${text}
    END

Search For Using Enter As Submit And Validate Results
    [Arguments]    ${search_phrase}    @{args}
    Search For And Validate Results   ${search_phrase}
    FOR    ${text}    IN    @{args}
        Wait Until Page Contains    ${text}
    END



*** Test Cases ***
TC1 Launch Google Home Page
    [Documentation]    Change of browser must be done while opening it in keyword
                       ...    Open Browser And Accept Cookies.
                       ...    OFC you can PARAMETRIZE IT
    Wait Until Page Contains    Google Search
    Wait Until Page Contains    Gmail
    Wait Until Page Contains    Images


TC2 Enter A Word In The Search Text Box
    [Documentation]    The question here is how to be sure that results are relevant
                       ...    We just check for some elements to be on the page
                       ...    maybe some pictures? other stuff?
    Search For    Apple
    Wait Until Page Contains    Nakupuj výhodne v iStores - Najväčšia sieť predajní
    Wait Until Page Contains    Apple Inc. - Wikipedia

TC3-1 Enter a sentence in the search text box    what is an Apple    Apple - Wikipedia    Apple Definition & Meaning - Merriam-Webster
    [Documentation]    Data Driven Approach to similar tests
    [Template]    Search For And Validate Results

TC3-2 Enter a sentence in the search text box
    [Documentation]    The same test using classical approach
    Search For Using Enter As Submit    what is an Apple
    Wait Until Page Contains    Apple - Wikipedia
    Wait Until Page Contains    Apple Definition & Meaning - Merriam-Webster


TC5 Max length of search keyword    Johny Johny yes papa, eating sugar no papa, telling lies no papa, open your mouth hahaha
    ...                             Johny Johny Yes Papa Nursery Rhyme - YouTube
    [Template]    Search For Using Enter As Submit And Validate Results


TC6 Invalid value in the search text box
    [Documentation]    This one should result in missing resuts. As google finds something, test is FAILED.
                       ...    This is correct. We need to write tests according to documentation (TC in this case)
                       ...    not against actual implementation.
    Search For Using Enter As Submit    @#$%^
    Wait Until Page Contains    Make sure that all words are spelled correctly.
    Wait Until Page Contains    Try different keywords.
    Wait Until Page Contains    Try more general keywords.


TC8 Speech recognition
    [Documentation]    Try to recognize speech
    Fail    We'll talk about it later
    # https://stackoverflow.com/questions/53500111/how-to-access-microphonecamera-in-robot-framework

TC9 Don’t have a microphone?
    [Documentation]    Try to check if we have microphone
    Fail    We'll talk about it later
    # https://stackoverflow.com/questions/53500111/how-to-access-microphonecamera-in-robot-framework
