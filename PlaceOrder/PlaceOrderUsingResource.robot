*** Settings ***

Documentation    This file is for validating valid credentials for placing order in Flipkart

Resource    ../Resource/common_functionality_Flpkrt.resource  
Resource    ../Resource/Pages/LoginPage.resource    
Resource    ../Resource/Pages/SelectProduct.resource   
Resource    ../Resource/Pages/AddToCart.resource

Test Setup    Launch Browser
Test Teardown    End Browser

*** Test Cases ***
Verify_Add_product
     #LOGIN PAGE    Resource    ../Resource/Pages/LoginPage.resource 
    Enter MailId    shanthineeli75@gmail.com
    Enter Password    admin$123
    ClickPassword
    
    Enter PhoneNum    9491364277
    ClickToValidate
    Enter Password    admin$123
    
    ClickToLogIn
    
    Click On SearchButton
    
    Enter in search    Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV 
    
    Goto TV    
    Select TV
    
    ${titles}    Get Window Titles 
    Log To Console     ${titles}           
    
    ${count}    Get Length     ${titles} 
    Log To Console    ${count}
    
    Run Keyword If    ${count}>1    Switch Window    NEW
    Wait For load
    Change Product
    Change Pin    600053 
    
    Get Product Text    
    Get Cost Detail
    Add To Cart
    
    
    

    