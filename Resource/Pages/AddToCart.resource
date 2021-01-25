*** Settings ***
Documentation    This file deals with all operation on LogIn Page for FLIPKART
    
Resource    ../common_functionality_Flpkrt.resource
Resource    LoginPage.resource

*** Variables ***
${WAIT_LOCATOR}    //*[@class=' fonts-loaded']
${CHANGE_LOCATOR}    //*[text()='Change']
${PIN_LOCATOR}    //*[@id='pincodeInputId']
${PRODUCT_LOCATOR}    //span[contains(@class,"B_NuCI")]
${COST_LOCATOR}    (//*[contains(text(),"54,999")])[1]

${CART_LOCATOR}    //*[@class='_2KpZ6l _2U9uOA _3v1-ww']

*** Keywords ***
Wait For load    
    Wait Until Page Contains Element    ${WAIT_LOCATOR}    
    
Change Product
    Click Element    ${CHANGE_LOCATOR}
    
Change Pin
    [Arguments]    ${pincode}
    Input Text    ${PIN_LOCATOR}    ${pincode}
Get Product Text
    
    ${producttext}    Get Text    ${PRODUCT_LOCATOR}    
    Log To Console    ${producttext}
Get Cost Detail

    ${amount}    Get Text    ${COST_LOCATOR}          
    Log To Console    ${amount}
Add To Cart
    Click Element   ${CART_LOCATOR}
    

 