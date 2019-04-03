*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
MyFirstTest
  Log    helloworllog
   #xpath=//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input
 FirstSeleniumTest    
    Open Browser    https:google.com  chrome  
    Set Browser Implicit Wait    5
    Input Text       name=q          Automation step by step
    sleep  2
    Press Keys       name=q               ESC
    sleep  2
    Click Button    xpath = //*[@id="tsf"]/div[2]/div/div[3]/center/input[1]    
    Close Browser   
    Log    TestCompleted    