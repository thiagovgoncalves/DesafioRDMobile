*** Settings ***
Library           AppiumLibrary
Resource          helpers.robot

*** Keywords ***
Abrir App
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:automationName=${appium:automationName}   appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}
    
Fechar App
    Close Application