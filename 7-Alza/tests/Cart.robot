*** Settings ***
Resource    keywords.resource
Test Setup    Setup Keyword
#Test Teardown     Close Browser


*** Test Cases ***
311 Adding a specific item via available category filters
    [Tags]    e2e    catalogue    cart
    Select From Left Menu    Computers and Laptops
    Select From Left Menu    Laptops
    Select From Category    Home & Office
    Select From Category    Affordable
    Select From Header Menu    Best Sellers
    Item With Index Should Contain Icon    3    icon-third-place
    ${product_data}    Select Item With Index And Return Name And Price    3
    Add To Cart Item With Index    3
    Top Right Cart Should Contain Count And Price    1    ${product_data[1]}
    Click Element    ${checkout}
    Wait Until Location Is    https://www.alza.sk/EN/Order1.htm
    Wait Until Element Is Visible    ${continue}
    Click Element    ${continue}
    Sleep     2 s
    Click Element    ${do_not_add_anything}
    Wait Until Location Is    https://www.alza.sk/Order2.htm
    Select Shipping Place And Dispatch    Bratislava - main shop    Standard dispatch
    Choose Payment Type    Credit / Debit Card
    Wait Until Element Is Enabled   confirmOrder2Button
    Wait Until Element Is Visible  confirmOrder2Button
    Sleep    1 s
    Click Element    confirmOrder2Button
    Wait Until Location Is    https://www.alza.sk/Order3.htm

312A Adding a multiple items via various paths - using search
    [Tags]    catalogue    cart
    Search For Using Search Bar    lego
    Select From Header Menu    Top-Rated
    ${prodcut_data}    Add To Cart Item With Row And Column    3    2

312B Adding a multiple items via various paths - carousel
    [Tags]     not-working
    Log    HOW?
    Fail    No Idea How To Do It

312C Adding a multiple items via various paths - Hover
    [Tags]    catalogue    cart
    Hover Over Left Menu Item    Household Supplies
    Select More Items From Hovered Menu Section    Light Bulbs and Lighting
    Select From Hovered Menu    Light Bulbs and Lighting    Work Lights
    Select From Header Menu    Best Sellers
    Item With Index Should Contain Icon    1    icon-first-place
    Fail    Needs to be finished



