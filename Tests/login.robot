*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/keyword.robot
Test Setup  Open Surplus Apps
Test Teardown  Close Surplus Apps

*** Test Cases ***
Login Success
    Click SignIn Button
    Input Email
    Input Password
    Click Login Button
    Verify Home Page

Login Invalid Password
    Click SignIn Button
    Input Email
    Input Wrong Password
    Click Login Button
    Verify Modal Error Username Password

