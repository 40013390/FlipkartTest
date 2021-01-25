*** Settings ***
Documentation    This file deals with all operation on LogIn Page for FLIPKART
    
Resource    ../common_functionality_Flpkrt.resource

*** Variables ***
${MAIL_LOCATOR}    xpath=//input[@class="_2IX_2- VJZDxU"]    
${PASS_LOCATOR}    //input[@class="_2IX_2- _3mctLh VJZDxU"]
${PSCLICK_LOCATOR}    (//span[text()='Login'])[2]

${PHONENUM_LOCATOR}    //input[@class="_2IX_2- VJZDxU"]
${PCLICK_LOCATOR}    //*[text()='CONTINUE']

${CLICK_LOCATOR}    (//*[text()='Login'])[3]


*** Keywords ***
Enter MailId
    [Arguments]    ${mailid}
    Input Text    ${MAIL_LOCATOR}    ${mailid}
    
Enter Password
    [Arguments]    ${password}
    Input Password    ${PASS_LOCATOR}    ${password}    
    
ClickPassword
    Click Element    ${PSCLICK_LOCATOR}   
    
Enter PhoneNum
    [Arguments]    ${phonenum}
    Input Text    ${PHONENUM_LOCATOR}    ${phonenum}    
    
ClickToValidate
    Click Element    ${PCLICK_LOCATOR}    
    
ClickToLogIn
    Click Element    ${CLICK_LOCATOR}  

 
    
