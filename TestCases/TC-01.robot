*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://dceims.bdeducation.org.bd/schoolAdmin

*** Test Cases ***
LoginTest
    Open browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    2s
    Input text    xpath://input[@placeholder='Email/User ID']  marma.newaj@gmail.com
    Input text    xpath://input[@id='password']  12345678
    Click element    xpath://button[@type='submit']
    Sleep   5s
    Close browser
