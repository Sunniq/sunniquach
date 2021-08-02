*** Keywords ***
Select category option with option name
    [Documentation]    Select category option with option name
    ...                *Arguments:*  
    ...                - _*category_name*_         : Category name
    [Arguments]    ${category_name}
    tool_bar_section.Click category menu
    tool_bar_section.Select category option by option name    ${category_name}

Verify number of wishlist item in case customer add product to wishlist then move to wish list page
    [Documentation]    Verify number of wishlist item in case customer add product to wishlist then move to wish list page
    ${number_of_item}    tool_bar_section.Get number of item in wishlist
    Should Be True    ${number_of_item}==1
    tool_bar_section.Click wishlist button