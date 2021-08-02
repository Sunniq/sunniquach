*** Settings ***
Resource    ${CURDIR}/../locator/page/product_list_page_locator.robot

*** Keywords ***
Verify product list page is loaded
    [Documentation]    Verify product list page is totally loaded
    ...                *Arguments:*  
    ...                - _*section_name*_         : Current section name
    [Arguments]    ${section_name}
    tool_bar_section.Verify tool bar section is displayed    ${section_name}
    Verify product list container is visible

Verify product list container is visible
    [Documentation]    Verify products container is visible
    common_android_keywords.Wait Element Is Visible    ${homePageLocator}[container_main_fragment]

Click any product in current screen
    [Documentation]    Click any product in current screen by clicking product name
    @{list_products}    common_android_keywords.Get Elements    ${productListPageLocator}[txt_products_name]
    ${len}    Get Length    ${list_products}
    ${rand_index}    Evaluate    random.randint(0,${len})
    common_android_keywords.Click Element    ${list_products}[${rand_index}]