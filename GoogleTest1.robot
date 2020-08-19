*** Settings ***
Documentation   Segundo Test
...             vamos a probar dios nos ayude

Library         SeleniumLibrary

*** Test Cases ***
P001LoginSmart - ingreso con usuario valido
    [Documentation]     When visit the page it should show the text Hello World
    # Open Browser    http://erppruebas.sreasons.com/auth/login     chrome
    Open Browser    https://www.google.com/            chrome
    Wait Until Element Is Visible   //*[@id="hplogo5"]
    # Input Text                      //*[@id="iduser"]           DEMO-PVLG
    # Input Text                      //*[@id="idpassword"]       12345
    # Click Element                   //*[@id="idbtningresar"]
    # Wait Until Element Is Visible   //*[@id="idlogosmart"]
    # Title Should Be     SmartReasons |
    # Page Should Contain     Mantenimiento
    Close Browser
P002LoginSmart - ingreso con usuario valido
    [Documentation]     When visit the page it should show the text Hello World

    # Open Browser    http://erppruebas.sreasons.com/auth/login     chrome
    Open Browser    https://www.google.com/            chrome
    Wait Until Element Is Visible   //*[@id="hplogo"]
    # Input Text                      //*[@id="iduser"]           DEMO-PVLG
    # Input Text                      //*[@id="idpassword"]       12345
    # Click Element                   //*[@id="idbtningresar"]
    # Wait Until Element Is Visible   //*[@id="idlogosmart"]
    # Title Should Be     SmartReasons |
    # Page Should Contain     Mantenimiento
    Close Browser