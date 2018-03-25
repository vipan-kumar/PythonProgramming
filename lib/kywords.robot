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

Enter Flgt Type
    [Arguments]                 ${FLG_TYPE}
    Select Radio Button         tripType  ${FLG_TYPE}

Enter Psngr
    [Arguments]                 ${PSNGR}
    Select From List By Value   xpath://select[@name="passCount"]     ${PSNGR}

DepFrom
    [Arguments]                 ${DEP_CITY}
    Select From List By Label   xpath://select[@name="fromPort"]    ${DEP_CITY}

DepOnDate
    [Arguments]                 ${DEP_MM}   ${DEP_DD}
    Select From List By Label   xpath://select[@name="fromMonth"]     ${DEP_MM}
    Select From List By Label   xpath://select[@name="fromDay"]     ${DEP_DD}

ArrIn
    [Arguments]                 ${ARR_CITY}
    Select From List By Label   xpath://select[@name="toPort"]     ${ARR_CITY}

RetOnDate
    [Arguments]                 ${RET_MM}   ${RET_DD}
    Select From List By Label   xpath://select[@name="toMonth"]     ${RET_MM}
    Select From List By Label   xpath://select[@name="toDay"]     ${RET_DD}

Enter Serv Class
    [Arguments]                 ${DEP_CLS}
    Select Radio Button         servClass  ${DEP_CLS}

Airline
    [Arguments]                 ${AIRLINE}
    Select From List By Label   xpath://select[@name="airline"]     ${AIRLINE}
