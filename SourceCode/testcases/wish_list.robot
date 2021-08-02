*** Setting ***
Resource    ${CURDIR}/../keywords/mobile/mobile_import.robot 
Suite Setup    common_android_keywords.Open SuperSport Application    ${device_info.sunni_device}
Suite Teardown    common_android_keywords.Close SuperSport Application

Force Tags    wish_list_function

*** Keywords ***
Customer go to product list page and add product to wish list with any size
    [Documentation]    Function for customer go to product list page and add product to wish list with any size
    ...                *Arguments:*  
    ...                - _*category_name*_         : Category name
    [Arguments]    ${category_name}
    tool_bar_functions.Select category option with option name    ${category_name}
    product_list_page.Click any product in current screen
    ${productDetailDict}    product_detail_page_functions.Customer add product to wish list with any size
    [Return]    ${productDetailDict}

*** Test Cases ***
Verify member can remove wish list item from wish list page
    [Tags]    TC1
    [Setup]    common_android_functions.Launch SuperSport application, select language and log in
    ...    ${customer.wishlist_customer.email}    ${customer.wishlist_customer.password}
    ${productDetailDict}    Customer go to product list page and add product to wish list with any size    ${menu_category.women}
    tool_bar_functions.Verify number of wishlist item in case customer add product to wishlist then move to wish list page
    wish_list_page_functions.Customer verify product data is show correctly in wish list page then remove product from wish list    ${productDetailDict}

Verify member can remove wish list item from product detail page
    [Tags]    TC2
    [Setup]    common_android_functions.Launch SuperSport application, select language and log in
    ...    ${customer.wishlist_customer.email}    ${customer.wishlist_customer.password}
    ${productDetailDict}    Customer go to product list page and add product to wish list with any size    ${menu_category.men}
    tool_bar_functions.Verify number of wishlist item in case customer add product to wishlist then move to wish list page
    wish_list_page_functions.Customer verify product data is show correctly in wish list page then go to product detail page    ${productDetailDict}
    product_detail_page.Click add to wish list button
    tool_bar_section.Verify number of wishlist item is not displayed
    tool_bar_section.Click wishlist button
    wish_list_page_functions.Verify customer wish list is empty