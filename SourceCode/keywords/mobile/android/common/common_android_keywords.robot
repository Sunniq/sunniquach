
*** Variables ***
&{commonPageLocator}
...    btn_english_language=android=UiSelector().resourceIdMatches(".*id/splash_item_name$").text("ENGLISH")
...    btn_thai_language=android=UiSelector().resourceIdMatches(".*id/splash_item_name$").text("ภาษาไทย")

*** Keywords ***
Open SuperSport Application
    [Documentation]    Opens a new application to Appium server with capabilities
    ...                ${device_info}    - Device info in dictionary type
    [Arguments]    ${device_info}    
    ${caps}    Create Dictionary
    ...    deviceName    ${device_info.deviceName}
    ...    platformName    ${device_info.platformName}
    ...    platformVersion    ${device_info.platformVersion}
    ...    app  ${device_info.app}
    ...    newCommandTimeout    ${device_info.newCommandTimeout}
    ...    noReset    ${device_info.noReset}
    ...    autoGrantPermissions    ${device_info.autoGrantPermissions}          
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    &{caps}

Launch SuperSport Application
    [Documentation]    Launch application while Appium session running
    AppiumLibrary.Launch Application

Close SuperSport Application
    [Documentation]    Close current application while Appium session running
    Run Keyword And Ignore Error    AppiumLibrary.Close Application

Select english language
    [Documentation]    Select english language at welcome page
    common_android_keywords.Click Element    ${commonPageLocator}[btn_english_language]

Select thai language
    [Documentation]    Select english language at welcome page
    common_android_keywords.Click Element    ${commonPageLocator}[btn_thai_language]    

Get Elements
    [Documentation]    This keyword for getting elements after verify these elements is visible
    ...                ${elems}    - Varargs of locators or elements
    [Arguments]    @{elems}
    Verify Elements Are Visible    @{elems}
    @{elements}    AppiumLibrary.Get Webelements    @{elems}
    [Return]    @{elements}
    
Get Text
    [Documentation]    Get text of target element
    ...                ${locator}    - Locator of target element
    [Arguments]    ${locator}
    common_android_keywords.Wait Element Is Visible    ${locator}
    ${text}    AppiumLibrary.Get Text    ${locator}
    [Return]    ${text}

Input Text
    [Documentation]    Input text into target element
    ...                ${locator}    - Locator of target element
    [Arguments]    ${locator}    ${text}
    common_android_keywords.Wait Element Is Visible    ${locator}
    AppiumLibrary.Input Text    ${locator}    ${text}

Click Element
    [Documentation]    Click to target element
    ...                ${locator}    - Locator of target element
    ...                ${timeout}    - Waiting time for target element visible
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    AppiumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    AppiumLibrary.Click Element    ${locator}

Verify Elements Are Visible
    [Documentation]    This keyword verify that page contains elements specified in arguments and verify each element is visible
    ...    ${elems}    - Varargs of locators or elements
    [Arguments]    @{elems}
    FOR    ${elem}    IN    @{elems}
        AppiumLibrary.Wait Until Page Contains Element    ${elem}    timeout=${GLOBALTIMEOUT}
    END    

Wait Element Is Visible
    [Documentation]    Wait element is visible
    ...                ${locator}    - Locator of target element
    ...                ${timeout}    - Waiting time for target element visible
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    AppiumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${timeout}

Wait Until Element Is Not Visible
    [Documentation]    Wait element is not visible
    ...                ${locator}    - Locator of target element
    ...                ${timeout}    - Waiting time for current page does not contain target element
    [Arguments]    ${locator}    ${timeout}=${GLOBALTIMEOUT}
    AppiumLibrary.Wait Until Page Does Not Contain Element    ${locator}    timeout=${timeout}