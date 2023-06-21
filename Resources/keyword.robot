*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/locator.robot
Resource    ../Data/data.robot

*** Keywords ***
Open Surplus Apps
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=surplus.surplus_apps_customer    appActivity=surplus.surplus_apps_customer.MainActivity  automationName=UiAutomator2
    sleep    5
    click element    ${ALLOW_LOC}

Close Surplus Apps
    Close Application

Click SignIn Button
    wait until element is visible    ${LOGIN-SIGNIN-BUTTON}
    click element    ${LOGIN-SIGNIN-BUTTON}

Input Email
    wait until element is visible    ${LOGIN-EMAIL-INPUT}
    input text    ${LOGIN-EMAIL-INPUT}  ${EMAIL-VALID}

Input Password
    input text    ${LOGIN-PWD-INPUT}  ${PWD-VALID}

Input Wrong Password
    input text    ${LOGIN-PWD-INPUT}  ${PWD-INVALID}

Click Login Button
    wait until element is visible    ${LOGIN-LOGIN-BUTTON}
    click element    ${LOGIN-LOGIN-BUTTON}

Verify Home Page
    wait until element is visible    ${HOME-VERIFY-TEXT}    timeout=10
    element should be visible    ${HOME-VERIFY-TEXT}
    click element    ${HOME-VERIFY-BUTTON}

Verify Modal Error Username Password
    wait until element is visible    ${LOGIN-WRONG_USERNAME_PWD-MODAL}   timeout=10
    element should be visible    ${LOGIN-WRONG_USERNAME_PWD-MODAL}

CLick Navbar Profile
    wait until element is visible    ${HOME-PROVILE-NAV}    timeout=10
    click element    ${HOME-PROVILE-NAV}

Click Icon Setting
    wait until element is visible    ${PROFILE-SETTING-ICON}    timeout=10
    click element    ${PROFILE-SETTING-ICON}

Click Setting Change Account
    wait until element is visible    ${SETTING-CHANGE_ACCOUNT-BUTTON}    timeout=10
    click element    ${SETTING-CHANGE_ACCOUNT-BUTTON}

Click Logout
    wait until element is visible    ${SETTING-LOGOUT-BUTTON}   timeout=10
    click element    ${SETTING-LOGOUT-BUTTON}

Click Cancel Logout
    wait until element is visible    ${SETTING-LOGOUT_CANCEL-BUTTON}    timeout=10
    click element    ${SETTING-LOGOUT_CANCEL-BUTTON}

Click Confirm Logout
    wait until element is visible    ${SETTING-LOGOUT_YES-BUTTON}   timeout=10
    click element    ${SETTING-LOGOUT_YES-BUTTON}

Verify Success Logout
    wait until element is visible   ${LOGIN-EMAIL-INPUT}
    element should be visible   ${LOGIN-EMAIL-INPUT}

Verify Cancel Logout
    wait until element is visible   ${SETTING-LOGOUT-BUTTON}
    element should be visible   ${SETTING-LOGOUT-BUTTON}

DO Login Valid
    Click SignIn Button
    Input Email
    Input Password
    Click Login Button
    Verify Home Page