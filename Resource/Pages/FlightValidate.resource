*** Settings ***
Documentation    This file deals with all operation on LogIn Page for FLIPKART
    
Resource    ../common_functionality_Flpkrt.resource
Resource    LoginPage.resource

*** Variables ***
${FLIGHT_LOCATOR}    //a[contains(text(),"Flights")]
${CLICK_FLIGHT}    //a[contains(text(),"Flights")]
${BOOKFLIGHT_LOCATOR}    //button[@class="_2KpZ6l _1QYQF8 _3dESVI"]

${ORIGIN_LOCATOR}    //*[contains(text(),"From")]    #(//div[@class="_3qBKP_ _1Jqgld"])[1]
*** Keywords ***
MouseOverOnFlight
    Mouse Over    ${FLIGHT_LOCATOR}
    
DoubleClickOnFlight
    Double Click Element    ${CLICK_FLIGHT}
    
ClickFlight
    Click Element    ${BOOKFLIGHT_LOCATOR}  
    
ClickOrigin
    Click Element    ${ORIGIN_LOCATOR}      
    
EnterSpaceOrigin
    Input Text    ${ORIGIN_LOCATOR}    ${EMPTY}    