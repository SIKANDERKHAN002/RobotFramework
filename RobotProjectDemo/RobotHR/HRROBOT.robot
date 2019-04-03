*** Settings ***

Library    SeleniumLibrary  
Suite Setup     Log  I am inside suite setup
Suite Teardown  Log  I am inside suite teardown suite
Test Setup      Log  I am inside suite test setup
Test Teardown   Log  I am inside suite teardown test 

#Default Tags    Sanity

***variables*** 
@{CREDENTIALS}  Admin  
&{PASSWORDS}    password=admin123
*** Test Cases ***
MyFirstTest
  Log    helloworllog
  
MySecondTest
  [Tags]  smoke
  Log    I am in second test
MyThirdTest
  Log    I am in third test   
  set Tags   regression1
  
MyFourthTest
  Log    I am in third test   
  set Tags   regression1  
  
   #xpath=//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input
 FirstSeleniumTest    
    Open Browser    https://opensource-demo.orangehrmlive.com/  chrome
    Set Browser Implicit Wait    7
    Input Text      xpath=//*[@id="txtUsername"]     @{CREDENTIALS}[0]
    Input Text      xpath=//*[@id="txtPassword"]     &{PASSWORDS}[password]
    sleep  2
    Click Button    xpath=//*[@id="btnLogin"]
    Click Link      xpath=//*[@id="wrapper"]//*[@id="branding"]/a[2] 
    Sleep    2     
    Click Link      xpath=//*[@id='welcome-menu']/ul/li[2]/a 
    #Log    This test was executed by  %{username}
    Log     Test Completed Now
    #Log     Test Completed   %{username}  
    
    