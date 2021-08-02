*** Setting ***
# Setting
Resource    ${CURDIR}/../../resources/imports.robot

#Common
Resource    ${CURDIR}/android/common/common_android_keywords.robot

# Page
Resource    ${CURDIR}/android/page/login_page.robot
Resource    ${CURDIR}/android/page/product_detail_page.robot
Resource    ${CURDIR}/android/page/product_list_page.robot
Resource    ${CURDIR}/android/page/wish_list_page.robot

#Section
Resource    ${CURDIR}/android/section/tool_bar_section.robot

#Function
#Common Function
Resource    ${CURDIR}/android/function/common/common_android_functions.robot
#Page Function
Resource    ${CURDIR}/android/function/page/log_in_page_functions.robot
Resource    ${CURDIR}/android/function/page/product_detail_page_functions.robot
Resource    ${CURDIR}/android/function/page/wish_list_page_functions.robot
#Section Function
Resource    ${CURDIR}/android/function/section/tool_bar_functions.robot