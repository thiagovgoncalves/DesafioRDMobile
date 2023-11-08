# Teste Cadastro

*** Settings ***
Resource        ../resources/helpers.robot
Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
Cadastro
    Cadastrar Usuario
    Login com Usuario Valido
    Login com Usuario Invalido