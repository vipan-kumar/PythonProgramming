*** Settings ***
Documentation       This is to book a flight
Resource            ../lib/kywords.robot
Resource            ../lib/vars.robot
Suite Teardown      Close Browser

*** Test Cases ***
Login To Application
    [Tags]    SIT
    Open Browser To Login Page
    Login Page Should Open
    Input Username              mercury
    Input Password              mercury
    Click Login Button
    Set Selenium Speed          ${DELAY}

Enter Flight Details
    [Tags]    SIT
    Enter Flgt Type             oneway
    Enter Psngr                 2
    DepFrom                     Frankfurt
    DepOnDate                   April   20
    ArrIn                       Paris
    RetOnDate                   May     1

Enter Preferences
    [Tags]    REG
    Enter Serv Class            Business
    Airline                     Unified${SPACE}Airlines

