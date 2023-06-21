*** Variables ***
#GENERAL
${ALLOW_LOC}    xpath=(//android.widget.Button)[1]

#LOGIN PAGE
${LOGIN-SIGNIN-BUTTON}    xpath=//*[@content-desc="LoginButton"]
${LOGIN-EMAIL-INPUT}    xpath=//*[@content-desc="LoginEmailInput"]
${LOGIN-PWD-INPUT}    xpath=//*[@content-desc="LoginPasswordInput"]
${LOGIN-LOGIN-BUTTON}    xpath=//*[@content-desc="LoginSubmitButton"]
${LOGIN-LOGIN-BUTTON}    xpath=//*[@content-desc="LoginSubmitButton"]
${LOGIN-WRONG_USERNAME_PWD-MODAL}    xpath=//*[@text="Email atau password salah."]

#HOME PAGE
${HOME-VERIFY-TEXT}    xpath=//*[@text="Jaminan Surplus"]
${HOME-VERIFY-BUTTON}    xpath=//*[@content-desc="ConfirmButtonText"]
${HOME-PROVILE-NAV}    xpath=//*[@text="PROFIL"]

#PROFILE PAGE
${PROFILE-SETTING-ICON}    xpath=//*[@text="Profil"]/parent::*/following-sibling::*/child::*

#SETTING
${SETTING-CHANGE_ACCOUNT-BUTTON}    xpath=//*[@content-desc="AccountSettingButton"]
${SETTING-LOGOUT-BUTTON}    xpath=//*[@content-desc="LogoutButton"]
${SETTING-LOGOUT_YES-BUTTON}    xpath=//*[@content-desc="LogoutPromptProceedButton"]
${SETTING-LOGOUT_CANCEL-BUTTON}    xpath=//*[@content-desc="LogoutPromptCancelButton"]