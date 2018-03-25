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
    Input Password              login
    Click Login Button

Enter Flight Details
    [Tags]    SIT
    Enter Flgt Type             OneWay
    Enter Psngr                 2
    DepFrom                     Frankfurt
    DepOnDate                   April   20
    RetOnDate                   May     1

Enter Preferences
    [Tags]    SIT
    Enter Serv Class            Business
    Airline                     UnifiedAirlines

