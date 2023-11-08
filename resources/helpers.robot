***Settings***
Resource    base.robot

*** Variables ***
${REMOTE_URL}                   http://192.168.1.21:4723
${platformName}                 Android
${appium:platformVersion}       13
${appium:deviceName}            Pixel4
${appium:automationName}        UiAutomator2
${appium:appPackage}            com.example.vamsi.login
${appium:appActivity}           com.example.vamsi.login.MainActivity 
${appium:newCommandTimeout}     3600

${USUARIO_VALIDO}               Rick Sanchez
${USUARIO_INVALIDO}             Jerry Smith
${EMAIL_VALIDO}                 rsanchez@email.com
${EMAIL_INVALIDO}               jerry_s@123.com
${SENHA_VALIDA}                 senhavalida
${SENHA_INVALIDA}               senhainvalida
${TELEFONE}                     42 99988-7766  


*** Keywords ***

Cadastrar Usuario
    Click Element                    id=com.example.vamsi.login:id/tvRegister
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegName
    Click Element                    id=com.example.vamsi.login:id/etRegName
    Input Text                       id=com.example.vamsi.login:id/etRegName           ${USUARIO_VALIDO}
    Input Text                       id=com.example.vamsi.login:id/etRegPhone          ${TELEFONE}
    Input Text                       id=com.example.vamsi.login:id/etRegGmail          ${EMAIL_VALIDO}
    Click Element                    id=com.example.vamsi.login:id/btnRegLogin
    Input Text                       id=com.example.vamsi.login:id/etRegPassword       ${SENHA_VALIDA} 
    Click Element                    id=com.example.vamsi.login:id/btnRegLogin
    Hide Keyboard
    

Login com Usuario Valido
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/btnGotoLogin
    Click Element                    id=com.example.vamsi.login:id/btnGotoLogin
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etLogGmail
    Input Text                       id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_VALIDO}
    Input Text                       id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_VALIDA}
    Click Element                    id=com.example.vamsi.login:id/btnLogin
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="You are now logged in"]
    Go Back
    

Login com Usuario Invalido
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text                      id=com.example.vamsi.login:id/etLogGmail           ${EMAIL_INVALIDO}
    Input Text                      id=com.example.vamsi.login:id/etLoginPassword      ${SENHA_INVALIDA}
    Click Element                   id=com.example.vamsi.login:id/btnLogin
    Element Should Be Visible       id=com.example.vamsi.login:id/btnLogin


