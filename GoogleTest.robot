*** Settings ***
Documentation   Primer test
...             vamos a probar... Que La Fuerza nos Acompañe

Library         SeleniumLibrary

Test Setup       Open Browser And Go To Page
Test Teardown    Close Browser

*** Variables ***
${FORM_URL}         https://www.google.com/
${BROWSER}          headlesschrome

*** Test Cases ***
Page Should Show Header
    [Documentation]     When visit the page it should show the text Hello World
    Page Should Contain     Google
    Wait Until Element Is Visible   //*[@id="hplogo"]

*** Keywords ***
Open Browser And Go To Page
    [Documentation]     When visit the page it should show the text Hello World
    Open Browser    ${FORM_URL}   ${BROWSER}
    Log             Hello World...