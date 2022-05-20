*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ${CURDIR}/resources/resources.resource
Test Setup    Open Browser On Heureka Page
Test Teardown    Close Browser

*** Test Cases ***
100 Adding and removing items from cart
    [Documentation]    Test chooses 3 products, add them to cart and afterwards
    ...                test if products are in basket, if they are in the price range
    ...                and tries to delete them and validate.
    Select Tips Of The Day    Tipy na grilovanie a piknik
    Select Category    Prenosné grily
    Select Range Filter    50 – 90 €

    Add Item To Basket    Eta Vital 1162 90000
    Add Item To Basket    Happy Green RANCHER 50SK138T4
    Add Item To Basket    Jata GR 195
    Navigate To Basket

    Item Cost Should Be In Range    ETA Vital 1162 90000    50    90
    Item Cost Should Be In Range    RANCHER 50SK138T4    50    90
    Item Cost Should Be In Range    JATA GR195    50    90

    Delete Item From Basket    RANCHER 50SK138T4
    Item Should Not Be Present    RANCHER 50SK138T4
    Delete Item From Basket    ETA Vital 1162 90000
    Delete Item From Basket    JATA GR195
    Item Should Not Be Present    ETA Vital 1162 90000
    Item Should Not Be Present    JATA GR195
    Basket Should Be Empty

101 Example other category
    [Documentation]    Only example of other section
    Select Tips Of The Day    Splňte si sen o dokonalom bazéne
    Select Category    Záhradné lehátka
    Select Range Filter    150 – 270 €

    Add Item To Basket    HECHT RESORT A
    Navigate To Basket

    Item Cost Should Be In Range    HECHT RESORT A - Polohohovateľné lehátko    150    270

    Delete Item From Basket    HECHT RESORT A - Polohohovateľné lehátko
    Item Should Not Be Present    HECHT RESORT A - Polohohovateľné lehátko
    Basket Should Be Empty