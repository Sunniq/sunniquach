*** Settings ***
Resource    ${CURDIR}/../locator/page/wish_list_page_locator.robot

*** Keywords ***
Verify empty wishlist text is displayed
    [Documentation]    Verify text that mentions empty wish is displayed
    common_android_keywords.Wait Element Is Visible    ${wishListPageLocator}[txt_empty_wishlist]

Verify empty wishlist icon is displayed
    [Documentation]    Verify icon that mentions empty wish is displayed
    common_android_keywords.Wait Element Is Visible    ${wishListPageLocator}[icon_empty_wishlist]  

Get product name in wish list page
    [Documentation]    Get product name in wish list page
    ${product_name}    common_android_keywords.Get Text    ${wishListPageLocator}[txt_product_name]
    [Return]    ${product_name}

Get product price in wish list page
    [Documentation]    Get product price in wish list page
    ${product_price}    common_android_keywords.Get Text    ${wishListPageLocator}[lbl_product_price]
    [Return]    ${product_price}

Get product size in wish list page
    [Documentation]    Get product size in wish list page
    ${product_size}    common_android_keywords.Get Text    ${wishListPageLocator}[lbl_product_size]
    [Return]    ${product_size}    

Click product name in wish lish page
    [Documentation]    Click product name to navigate to product detail page
    common_android_keywords.Click Element    ${wishListPageLocator}[txt_product_name]

Remove product in wish list page
    [Documentation]    Remove product in wish list page by clicking x button
    common_android_keywords.Click Element    ${wishListPageLocator}[btn_delete_product]