*** Settings ***
Resource    ${CURDIR}/../locator/section/tool_bar_section_locator.robot

*** Keywords ***
Verify tool bar section is displayed
    [Documentation]    Verify tool bar is totally loaded
    ...                *Arguments:*  
    ...                - _*section_name*_         : Current section name
    [Arguments]    ${section_name}    
    ${text}    tool_bar_section.Get section name
    Should Be Equal As Strings    ${text}    ${section_name}
    common_android_keywords.Wait Element Is Visible    ${toolbarSectionLocator}[btn_search]
    common_android_keywords.Wait Element Is Visible    ${toolbarSectionLocator}[btn_category_menu]
    common_android_keywords.Wait Element Is Visible    ${toolbarSectionLocator}[btn_wishlist]
    common_android_keywords.Wait Element Is Visible    ${toolbarSectionLocator}[btn_cart]

Click search button
    [Documentation]    Click search button in tool bar section
    common_android_keywords.Click Element    ${toolbarSectionLocator}[btn_search]

Click wishlist button
    [Documentation]    Click wishlist button in tool bar section
    common_android_keywords.Click Element    ${toolbarSectionLocator}[btn_wishlist] 

Click shopping bag button
    [Documentation]    Click shopping bar button in tool bar section
    common_android_keywords.Click Element    ${toolbarSectionLocator}[btn_cart]

Get section name
    [Documentation]    Click current section name in tool bar section
    ${text}    common_android_keywords.Get Text    ${toolbarSectionLocator}[lbl_section_name]
    [Return]    ${text}

Get number of item in wishlist
    [Documentation]    Click number of item in wishlist
    ${number_of_item_txt}    common_android_keywords.Get Text    ${toolbarSectionLocator}[lbl_number_wishlist_item]
    ${number_of_item}    Convert To Integer    ${number_of_item_txt}
    [Return]    ${number_of_item}

Click category menu
    [Documentation]    Click category menu button
    common_android_keywords.Click Element    ${toolbarSectionLocator}[btn_category_menu]

Select category option by option name
    [Documentation]    Select category option in category menu
    ...                *Arguments:*  
    ...                - _*category_name*_         : Category name
    [Arguments]    ${category_name}
    ${locator}    String.Format String    ${toolbarSectionLocator}[opt_category]    opt_name=${category_name}
    common_android_keywords.Click Element    ${locator}

Verify number of wishlist item is not displayed
    [Documentation]    Verify number of wishlist item is not displayed in case none of wishlist items
    common_android_keywords.Wait Until Element Is Not Visible    ${toolbarSectionLocator}[lbl_number_wishlist_item]