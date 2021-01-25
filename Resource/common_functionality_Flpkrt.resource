*** Settings ***
Documentation    This file contains browser activity keywords
...    and screenshot directory FOR FLIPKART TESTING
    
Library    OperatingSystem
Library    SeleniumLibrary    screenshot_root_directory=Screenshot

*** Variables ***
${BROWSER_NAME}     googlechrome 
${URL}    https://www.flipkart.com/

*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver                       
    Open Browser    browser= ${BROWSER_NAME} 
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}

End Browser
    Close Browser