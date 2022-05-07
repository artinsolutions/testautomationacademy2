*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    locators.resource

*** Keywords ***
Setup Keyword
    Open Browser    https://www.alza.sk/EN/    gc
    Accept Cookies
    Maximize Browser Window

Accept Cookies
    Wait Until Page Contains Element    xpath=//a[@data-action-id-value='1023']
    Click Element    xpath=//a[@data-action-id-value='1023']

Select From Left Menu
    [Arguments]    ${item}
    ${locator}    Format String    ${left_menu_item}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select From Category
    [Arguments]    ${item}
    ${locator}    Format String    ${category_item}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select From Header Menu
    [Arguments]    ${item}
    ${locator}    Format String    ${header_item}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Item With Index Should Contain Icon
    [Arguments]    ${index}    ${icon_name}
    ${locator}    Catenate    SEPARATOR=   ${item_boxes}    [${index}]    //img[contains(@data-src, '${icon_name}')]
    Wait Until Page Contains Element    ${locator}

Select Item With Index And Return Name And Price
    [Arguments]    ${index}
    ${locator_name}    Catenate   SEPARATOR=   ${item_boxes}    [${index}]    ${name_partial_locator}
    ${locator_price}    Catenate    SEPARATOR=    ${item_boxes}    [${index}]    ${price_partial_locator}
    Wait Until Page Contains Element    ${locator_name}
    ${name}    Get Text    ${locator_name}
    ${price}    Get Text     ${locator_price}
    [Return]    ${name}    ${price}

Add To Cart Item With Index
    [Arguments]    ${index}
    ${locator}    Catenate   SEPARATOR=   ${item_boxes}    [${index}]    ${add_to_cart_partial_locator}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Wait Until Page Contains    Product Added to Cart.

Top Right Cart Should Contain Count And Price
    [Arguments]    ${number}    ${total}
    ${count_locator}    Catenate   SEPARATOR=   ${top_right_cart}    ${top_right_cart_partial_count}
    ${price_locator}    Catenate   SEPARATOR=   ${top_right_cart}    ${top_right_cart_partial_price}
    ${count}    Get Text    ${count_locator}
    ${price}    Get Text    ${price_locator}
    Should Be Equal As Integers    ${number}   ${count}
    Should Be Equal As Strings    ${total}   ${price}

Select Shipping Place And Dispatch
    [Arguments]    ${place}     ${type}
    ${locator}    Format String    ${shipping}    ${place}
    ${dispatch_type}    Format String    ${dialog_dispatch}    ${type}
    Click Element    ${locator}
    Wait Until Page Contains Element    ${dispatch_type}
    Click Element    ${dispatch_type}
    Click Element    ${confirm_dispatch}

Choose Payment Type
    [Arguments]    ${type}
    ${locator}    Format String    ${payment_type}    ${type}
    Wait Until Page Contains Element    ${locator}
    Wait Until Element Is Visible    ${locator}
    Sleep    2 s
    Click Element    ${locator}









