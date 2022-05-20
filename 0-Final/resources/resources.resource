### Basic Information
#  TRY/EXCEPT v keywordoch
#  - vzhladom na to, ze chromedriver ma problem, v keywordoch sa nachadza EXCEPTION HANDLING
#  - po googleni som prisiel na to, ze ta chyba nema vplyv na funkcnost, tj, treba ju proste odignorovat
#  - a toto presne robi try/except
#  Logujem s levelom   WARN  (nezhodi to test, ale vypise to priamo do logu)


# Ostatne keywordy su robene co najgenerickejsie, a mali by byt schopne prejst aj po inych kategoriach
# - vid test 2

# Vo vseobecnosti plati, ze test aj keyword file by mali byt rozumne citatelne
# miestami som xpathy dal do variables, miestami nie...
# Je to zase len na ukazku, ako sa da s epxathmi robit, napr 'spajanie'
#   ktore je vidiet na riadku 46 napr... (priam do xpathu sa vlozi variable)


# riadok 120 ukazuje, ako sa da na 'premenu' textu na cislo pouzit priamo python
*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${product_cart_row}    xpath=//div[@class='c-product-card js-cart-step1__product-card'][contains(., '{}')]
${buy_on_heureka}    xpath=//div[@class='c-top-offer__buy']/button/span[text()='Kúpiť na Heureke']
${range_filter}    xpath=//li[@class='c-toggle-list__item c-filter__item']//label[descendant::a[text()='{}']]

${basket}     xpath=//li[contains(@class, 'c-user-controls__item--cart')]/a
${remove_from_basket}    //a[text()='Odstrániť z košíka']

${product_cart}    xpath=//section[contains(@class, 'c-product c-product--compact')]//a[@class='c-product__link']

${product_href}    xpath=//li[@class='c-product-list__item']/section[@class='c-product']/a[2]
${tips_category}    xpath=//a[@title="{}"]

*** Keywords ***
Open Browser On Heureka Page
    [Documentation]    Simple kw to open browser on heureka page and set resolution
    Open Browser    https://www.heureka.sk/    gc
    Set Window Size    1920    1080

Select Category
    [Documentation]    Selects category from categories
    [Arguments]    ${category_name}
    Wait Until Page Contains Element    xpath=//a[@data-gtm-event-label='${category_name}']
    Click Element    xpath=//a[@data-gtm-event-label='${category_name}']

Select Tips Of The Day
    [Documentation]    Keyword is used for today tips opening.
    [Arguments]    ${today_tips}
    ${category}    Format String    ${tips_category}    ${today_tips}
    TRY
        Wait Until Page Contains Element    ${category}    timeout=10 s
    EXCEPT    WebDriverException: Message: target frame detached*    type=GLOB
        Log    WebDriverException: Message: target frame detached    WARN
    END
    Scroll Element Into View    ${category}
    TRY
        Click Element    ${category}
    EXCEPT    WebDriverException: Message: target frame detached*    type=GLOB
        Log    WebDriverException: Message: target frame detached    WARN
    END


Select Range Filter
    [Documentation]    Selects range from left filter. Range is identified by ${filter_value} that
                       ...    must be exact match to the filter value on the screen.
                       ...    From the automation point of view it is value:
                       ...    //label[@class='c-form-cell__label c-form-cell__label--subtle e-counter]/a
    [Arguments]    ${filter_value}
    ${filter}    Format String    ${range_filter}    ${filter_value}
    TRY
        Wait Until Page Contains Element    ${filter}    timeout=10 s
    EXCEPT    WebDriverException: Message: target frame detached*    type=GLOB
        Reload Page
        Sleep    5 s
        Wait Until Page Contains Element    ${filter}    timeout=10 s
    END
    Click Element    ${filter}
    Wait Until Page Contains Element    xpath=//li[contains(@class, 'is-applied')]    timeout=10 s

Add Item To Basket
    [Arguments]    ${item_name}
    Wait Until Page Contains Element    //img[@alt='${item_name}']    timeout=10 s
    TRY
        Scroll Element Into View    //img[@alt='${item_name}']
    EXCEPT    WebDriverException: Message: target frame detached*    type=GLOB
        Log    WebDriverException: Message: target frame detached    WARN
    END
    Click Element    //img[@alt='${item_name}']
    Wait Until Page Contains Element    ${buy_on_heureka}    10 s
    Click Element    ${buy_on_heureka}
    Wait Until Page Contains    Tovar sme pridali do košíka    timeout=10 s
    Go Back

Navigate To Basket
    [Documentation]    Navigates to the top of page and click basket
    Execute Javascript    window.scrollTo(0, 0)
    Wait Until Page Contains Element    ${basket}    10 s
    Click Element    ${basket}
    Wait Until Page Contains    Cena celkom vr. DPH    20 s
    Wait Until Page Does Not Contain Element    xpath=//div[contains(@class, 'c-loading--overlay c-loading--centered')]    timeout=30 s

Delete Item From Basket
    [Arguments]    ${item_name}
    ${row}    Format String    ${product_cart_row}    ${item_name}
    Wait Until Page Contains Element    ${row}    timeout=20 s
    Click Element    ${row}//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action']
    Wait Until Page Contains Element    ${row}${remove_from_basket}    timeout=20 s
    Wait Until Page Does Not Contain Element    xpath=//div[contains(@class, 'c-loading--overlay c-loading--centered')]    timeout=30 s
    Click Element    ${row}${remove_from_basket}
    Wait Until Page Does Not Contain Element    xpath=//div[contains(@class, 'c-loading--overlay c-loading--centered')]    timeout=30 s

Item Cost Should Be In Range
    [Arguments]    ${item_name}    ${cost_min}    ${cost_max}
    ${row}    Format String    ${product_cart_row}    ${item_name}
    Wait Until Page Contains Element    ${row}    timeout=10 s
    ${price}    Get Text    ${row}//div[contains(@class, 'c-product-card__price')]
    ${price}    Evaluate    float(${price.split(" ")[0].replace(",",".")})
    Should Be True    ${cost_min} < ${price} < ${cost_max}

Item Should Not Be Present
    [Arguments]    ${item_name}
    ${row}    Format String    ${product_cart_row}    ${item_name}
    Page Should Not Contain Element    ${row}

Basket Should Be Empty
    Wait Until Page Contains    Váš košík zíva prázdnotou...     10 s
