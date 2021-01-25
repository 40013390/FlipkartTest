*** Settings ***
Documentation    This file is for validating valid credentials for Flight option in Flipkart


Resource    ../Resource/common_functionality_Flpkrt.resource  
Resource    ../Resource/Pages/LoginPage.resource    
Resource    ../Resource/Pages/FlightValidate.resource


Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***

Verify_Valid_Flight_booking
    [Documentation]    LOGIN PAGE [Resource : ../Resource/Pages/LoginPage.resource] 
    Enter MailId    shanthineeli75@gmail.com
    Enter Password    admin$123
    ClickPassword
    
    Enter PhoneNum    9491364277
    ClickToValidate
    Enter Password    admin$123
    
    ClickToLogIn
    #FLIGHT VALIDATE PAGE    Resource    ../Resource/Pages/FlightValidate.resource
    MouseOverOnFlight
    DoubleClickOnFlight
    ClickFlight
    #getting errors
   
    EnterSpaceOrigin
    ${fromError}    Get Text    //div[text()='origin cannot be empty']
    Log To Console    ${fromError}    
    
    ${dstnError}    Get Text    //div[text()='destination cannot be empty']
    Log To Console    ${dstnError} 
    
        