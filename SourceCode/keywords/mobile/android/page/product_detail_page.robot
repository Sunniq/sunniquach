*** Settings ***
Resource    ${CURDIR}/../locator/page/product_detail_page_locator.robot

*** Keywords ***
Click add to wish list button
    [Documentation]    Click add to wish list button
    common_android_keywords.Click Element   ${productDetailPageLocator}[btn_add_to_wishlist]

Get product price
    [Documentation]    Get product price in product detail page
    ${product_price}    common_android_keywords.Get Text    ${productDetailPageLocator}[lbl_product_price]
    [Return]    ${product_price}    

Get product name
    [Documentation]    Get product name in product detail page
    ${product_price}    common_android_keywords.Get Text    ${productDetailPageLocator}[txt_product_name]
    [Return]    ${product_price}

Click Choose Size button
    [Documentation]    Click Choose Size button in product detail page
    common_android_keywords.Click Element   ${productDetailPageLocator}[btn_choose_size]

Get current classification size option for product in Choose Size screen
    [Documentation]    Get current classification size option in Choose Size screen 
    ${classification_size_option}    common_android_keywords.Get Text    ${productDetailPageLocator}[lbl_classification_option]
    [Return]    ${classification_size_option}

Click first option in Choose Size screen
    [Documentation]    Get first option in current classification size option in Choose Size screen 
    @{list_options}    common_android_keywords.Get Elements    ${productDetailPageLocator}[lbl_item_options]
    ${first_option_size}    common_android_keywords.Get Text    ${list_options}[0]
    common_android_keywords.Click Element    ${list_options}[0]
    [Return]    ${first_option_size}

Click Ok button in Choose Size screen
    [Documentation]    Click Ok button in Choose Size screen
    common_android_keywords.Click Element   ${productDetailPageLocator}[btn_ok_choose_size_pop_up]    