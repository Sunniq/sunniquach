*** Keywords ***
Customer verify product data is show correctly in wish list page then remove product from wish list
    [Documentation]    Customer verify product data is show correctly in wish list page then remove product from wish list
    ...                *Arguments:*
    ...                - _*productDetailDict*_           : Product data with dictionary type
    [Arguments]    ${productDetailDict}
    Verify product data is show correctly in wishlist page    ${productDetailDict}
    wish_list_page.Remove product in wishlist page
    Verify customer wish list is empty

Customer verify product data is show correctly in wish list page then go to product detail page
    [Documentation]    Customer verify product data is show correctly in wish list page then go to product detail page
    ...                *Arguments:*
    ...                - _*productDetailDict*_           : Product data with dictionary type
    [Arguments]    ${productDetailDict}
    Verify product data is show correctly in wishlist page    ${productDetailDict}
    wish_list_page.Click product name in wishlish page    

Verify product data is show correctly in wishlist page
    [Documentation]    Verify product data is show correctly in wishlist page
    ...                *Arguments:*
    ...                - _*productDetailDict*_           : Product data with dictionary type
    [Arguments]    ${productDetailDict}
    ${product_name}    wish_list_page.Get product name in wish list page
    ${product_price}    wish_list_page.Get product price in wish list page
    ${product_size}    wish_list_page.Get product size in wish list page
    Should Be Equal As Strings    ${product_name}    ${productDetailDict.name}
    Should Be Equal As Strings    ${product_price}    ${productDetailDict.price}
    Should Be Equal As Strings    ${product_size}    ${productDetailDict.size}

Verify customer wish list is empty
    [Documentation]    Verify customer wish list is empty by checking icon and text that mentions empty wishlist
    wish_list_page.Verify empty wishlist icon is displayed
    wish_list_page.Verify empty wishlist text is displayed