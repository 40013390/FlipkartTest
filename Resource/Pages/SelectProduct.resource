*** Settings ***
Documentation    This file deals with all operation on LogIn Page for FLIPKART
    
Resource    ../common_functionality_Flpkrt.resource
Resource    LoginPage.resource

*** Variables ***
${SEARCH_LOCATOR}    xpath=//input[@placeholder='Search for products, brands and more']
${SEARCH_ELEMENT_LOCAROR}    xpath=//input[@placeholder='Search for products, brands and more']

${TV_LOCATOR}    xpath=(//*[@class='_34RNph'])[1]
${SELECT_TV_LOCATOR}    xpath=//div[contains(text(),"Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV")]
*** Keywords ***
Click On SearchButton
    Click Element    ${SEARCH_LOCATOR}
    
Enter in search
    [Arguments]    ${searchelement}
    Input Text    ${SEARCH_ELEMENT_LOCAROR}    Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV 

Goto TV
    Click Element    ${TV_LOCATOR}    
    
Select TV
    Click Element    ${SELECT_TV_LOCATOR}  
    
  
   
    

    
