*** Keywords ***
Customer add product to wish list with any size
    [Documentation]    Function for customer add product to wish list with any size
    ...                *Return:*  
    ...                - _*productDetailDict*_           : Product data with dictionary type
    ${classification_size_option}    ${first_option_size}    Select first option in Choose Size pop up
    ${productDetailDict}    Get product detail in product detail page    ${classification_size_option}    ${first_option_size}
    product_detail_page.Click add to wish list button
    [Return]    ${productDetailDict}   

Get product detail in product detail page
    [Documentation]    Get product detail in product detail page
    ...                *Arguments:*  
    ...                - _*classification size*_         : Classification size of selected product
    ...                - _*size*_                        : Size of selected product
    ...                *Return:*  
    ...                - _*productDetailDict*_           : Product data with dictionary type
    [Arguments]    ${classification size}    ${size}    
    ${product_name}    product_detail_page.Get product name
    ${product_price}    product_detail_page.Get product price
    ${product_size}    Get product size as format    ${classification size}    ${size}
    ${productDetailDict}=    Create Dictionary
    Set To Dictionary    ${productDetailDict}    name    ${product_name}
    Set To Dictionary    ${productDetailDict}    price    ${product_price}
    Set To Dictionary    ${productDetailDict}    size    ${product_size}
    [Return]    ${productDetailDict}

Get product size as format
    [Documentation]    Change format of size data to compare - Format Ex: 7 (UK)
    ...                *Arguments:*  
    ...                - _*classification size*_         : Classification size of selected product
    ...                - _*size*_                        : Size of selected product
    [Arguments]    ${classification size}    ${size}
    ${classification size_formatted}    Catenate    SEPARATOR=${EMPTY}    (    ${classification size}    )
    ${size_formatted}    Catenate    SEPARATOR=${SPACE}    ${size}    ${classification size_formatted}
    [Return]    ${size_formatted}

Select first option in Choose Size pop up
    [Documentation]    Function for select first option in Choose Size pop up
    product_detail_page.Click Choose Size button
    ${classification_size_option}    product_detail_page.Get current classification size option for product in Choose Size screen
    ${first_option_size}    product_detail_page.Click first option in Choose Size screen
    product_detail_page.Click Ok button in Choose Size screen
    [Return]    ${classification_size_option}    ${first_option_size}    