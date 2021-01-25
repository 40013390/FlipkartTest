*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem 
*** Test Cases ***
TC1_BookFlightTest
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    #Navigate onto https://www.flipkart.com/
    Open Browser    https://www.flipkart.com/     browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30 
    
    #Complete Sign in process and validate whether signed-in.
    Input Text    xpath=//input[@class="_2IX_2- VJZDxU"]    shanthineeli75@gmail.com    
    Input Password    xpath=//input[@class="_2IX_2- _3mctLh VJZDxU"]     admin$123
    Click Element      xpath=(//span[text()='Login'])[2]
    
    Input Text    xpath=//input[@class="_2IX_2- VJZDxU"]    9491364277 
    Click Element    xpath=//*[text()='CONTINUE']
    Input Text    xpath=//input[@class="_2IX_2- _3mctLh VJZDxU"]    admin$123
    Click Element    (//*[text()='Login'])[3]
    
    #Click on Flight
    Mouse Over    //a[contains(text(),"Flights")]
    Double Click Element    //a[contains(text(),"Flights")]    
    
    
    ${titles}    Get Window Titles 
    Log To Console     ${titles}           
    ${count}    Get Length     ${titles} 
    Log To Console    ${count}
        
    #Click on search
    
    Click Button    //button[@class="_2KpZ6l _1QYQF8 _3dESVI"]
    
    #Validate the origin and destination error message
    
    ${fromError}    Get Text    //div[text()='origin cannot be empty']
    Log To Console    ${fromError}    
    
    ${dstnError}    Get Text    //div[text()='destination cannot be empty']
    Log To Console    ${dstnError}    