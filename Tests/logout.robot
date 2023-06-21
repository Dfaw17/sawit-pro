*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/keyword.robot
Test Setup  Open Surplus Apps
Test Teardown  Close Surplus Apps

*** Test Cases ***
Logout Success
    DO Login Valid
    CLick Navbar Profile
    Click Icon Setting
    Click Setting Change Account
    Click Logout
    Click Confirm Logout
    Verify Success Logout

Logout Cancel
    DO Login Valid
    CLick Navbar Profile
    Click Icon Setting
    Click Setting Change Account
    Click Logout
    Click Cancel Logout
    Verify Cancel Logout

