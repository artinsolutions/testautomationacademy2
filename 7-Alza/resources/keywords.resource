*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    locators.resource

*** Keywords ***
Setup Keyword
    Open Browser    https://www.alza.sk/EN/    gc
    Set Window Size    1920    1080
    Accept Cookies
    Reload Page

Accept Cookies
    Wait Until Page Contains Element    xpath=//a[@data-action-id-value='1023']
    Click Element    xpath=//a[@data-action-id-value='1023']

Select From Left Menu
    [Arguments]    ${item}
    ${locator}    Format String    ${left_menu_item}    ${item}
#    ${locator}    Format String    xpath=//div[@id='{}']    ${item}
    # //div[@id='left']//a[text()='Computers and Laptops']
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
#    a    b    c  ->   a b c
    # sep=
#    a    b    c -> abc
#                                                           [3]    //img[con
    # sep=*
#    a    b    c -> a*b*c
# (//div[@id='boxc']/div[@id='boxes']/div)[3]//img[contains(@data-src, 'icon-third-place)]
    ${locator}    Catenate    SEPARATOR=   ${item_boxes}    [${index}]    //img[contains(@data-src, '${icon_name}')]
#    ${locator}    Format String    ${item_boxes_to_format}    ${index}    ${icon_name}
    Wait Until Page Contains Element    ${locator}

Select Item With Index And Return Name And Price
    [Arguments]    ${index}
    ${locator_name}    Catenate   SEPARATOR=   ${item_boxes}    [${index}]    ${name_partial_locator}
    ${locator_price}    Catenate    SEPARATOR=    ${item_boxes}    [${index}]    ${price_partial_locator}
    Wait Until Page Contains Element    ${locator_name}
    ${name}    Get Text    ${locator_name}
    ${price}    Get Text     ${locator_price}
    [Return]    ${name}    ${price}
    # ["lenovo ...", "1240 Eur"]

Add To Cart Item With Index
    [Arguments]    ${index}
    ${locator}    Catenate   SEPARATOR=   ${item_boxes}    [${index}]    ${add_to_cart_partial_locator}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Wait Until Page Contains    Product Added to Cart.    timeout=15 s

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

Search For Using Search Bar
    [Arguments]    ${search_text}
    Wait Until Page Contains Element    ${search_bar}
    Input Text    ${search_bar}    ${search_text}
    Click Element    ${btn_search}

Add To Cart Item With Row And Column
    [Arguments]    ${row}    ${column}
    ${rows}    Get Webelements    ${first_row}
    ${row_items_count}    Get Length    ${rows}
    ${index}    Evaluate    (int(${row})-1) * int(${row_items_count}) + int(${column})
    ${product_data}    Select Item With Index And Return Name And Price    ${index}
    Add To Cart Item With Index    ${index}
    [Return]    ${product_data}

Hover Over Left Menu Item
    [Arguments]    ${item}
    ${locator}    Format String    ${left_menu_item}    ${item}
    Wait Until Page Contains Element    ${locator}
    Mouse Over    ${locator}

Select More Items From Hovered Menu Section
    [Arguments]    ${menu_section}
    ${locator}    Format String    ${hover_menu_section}    ${menu_section}
    ${locator_full}    Catenate   SEPARATOR=   ${locator}    //span[@class='btnMore']
    Wait Until Element Is Visible    ${locator_full}
    Wait Until Page Contains Element    ${locator_full}
    Click Element    ${locator_full}


Select From Hovered Menu
    [Arguments]    ${menu}    ${item}
    ${locator_menu_section}    Format String    ${hover_menu_section}    ${menu}
    ${locator}    Format String    ${catalog_link}    ${item}
    ${locator_full}    Catenate   SEPARATOR=   ${locator_menu_section}    ${locator}
    Wait Until Page Contains Element    ${locator_full}
    Wait Until Element Is Visible    ${locator_full}
    Click Element    ${locator_full}









