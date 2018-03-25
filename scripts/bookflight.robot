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
