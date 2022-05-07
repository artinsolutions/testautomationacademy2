*** Variables ***
${left_menu_item}    xpath=//div[@id='left']//a[text()='{}']
${category_item}    xpath=//div[contains(@class, 'catlistContainer')]//a/span[text()='{}']
${header_item}    xpath=//div[@id='tabs']//li[@role='tab']/a[text()='{}']
${item_boxes}    xpath=(//div[@id='boxc']/div[@id='boxes']/div)
${top_right_cart}    xpath=//div[@id='top1']//div[@id='basketc']
${checkout}    id=varBToBasketButton
${continue}    id=blockBtnRight
${do_not_add_anything}    xpath=//div[@id='alzaDialog']//span[contains(@class, 'close-button')]
${shipping}    xpath=//div[contains(@class, 'deliveryContainer')][descendant-or-self::div[contains(@class, 'deliveryLabel') and contains(., '{}')]]

${dialog_dispatch}    xpath=//div[@id='alzaDialog']//div[contains(@class, '__name') and normalize-space(text()='{}')]
${confirm_dispatch}     xpath=//a[contains(@class, 'confirmDialog')]
${payment_type}    xpath=//div[@id='order2Payment']//div[@class='paymentContainer'][descendant-or-self::div[contains(., '{}')]]

${name_partial_locator}    //a[contains(@class, 'name')]
${price_partial_locator}    //div[@class='price']//span[@class='c2']
${add_to_cart_partial_locator}    //a[@data-lb-action='buy']
${top_right_cart_partial_count}    //span[@class='count']
${top_right_cart_partial_price}    //span[@id='price']
