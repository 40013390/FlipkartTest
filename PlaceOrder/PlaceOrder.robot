*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    
*** Test Cases ***
TC1_Test
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
            
    Click Element    xpath=//*[@class='_2KpZ6l _2HKlqd _3AWRsL']
    
    #Click Element    //*[text()='TVs & Appliances']
    #Click Element    //a[text()='Mi']
        
    #Click Element    //div[text()='Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV.']
    Click Element    xpath=//input[@placeholder='Search for products, brands and more']
    Input Text    xpath=//input[@placeholder='Search for products, brands and more']    Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV    
    
    #Go for Tv-->MI
    Click Element    xpath=(//*[@class='_34RNph'])[1]         
    #click on Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV.
    Click Element    xpath=//div[contains(text(),"Mi Q1 138.8 cm (55 inch) QLED Ultra HD (4K) Smart Android TV")]    
   
    ${titles}    Get Window Titles 
    Log To Console     ${titles}           
    ${count}    Get Length     ${titles} 
    Log To Console    ${count}
    
    #Click Save For later
    Run Keyword If    ${count}>1    Switch Window    NEW     
    Wait Until Page Contains Element    //*[@class=' fonts-loaded']        
    Click Element    //*[text()='Change']
    
    #Enter Pin Code and check
    Input Text    //*[@id='pincodeInputId']    600053   
     
    #print Product and cost in console 
    ${text}    Get Text    //span[contains(@class,"B_NuCI")]
    Log To Console    ${text}
    
    ${amount}    Get Text    (//*[contains(text(),"54,999")])[1]      
    Log To Console    ${amount}
    
    #Add to Cart
    Click Element   //*[@class='_2KpZ6l _2U9uOA _3v1-ww']
    #${text}    Get Text    //div[@class="Ob17DV _3X7Jj1"]