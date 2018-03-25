*** Settings ***
Documentation       This is to define keywords for all the scripts
Resource            vars.robot
Library             SeleniumLibrary


*** Keywords ***
Open Browser To Login Page
    Open Browser            ${APPURL}   ${BROWSER}
    Maximize Browser Window

Login Page Should Open
    Title Should Be         ${LOGIN_TITLE}

Input Username
    [Arguments]                 ${USER}
    Clear Element Text          name:userName
    Input Text                  name:userName  ${USER}

Input Password
    [Arguments]                 ${PWD}
    Clear Element Text          name:password
    Input Text                  name:password  ${PWD}

Click Login Button
    Click Button                name:login