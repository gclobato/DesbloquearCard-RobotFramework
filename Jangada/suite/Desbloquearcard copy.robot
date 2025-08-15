*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://jangada.brb.com.br/login.jsp
${USERNAME}    
${PASSWORD}    
${CARTAO}    6033261481005011  #6033261481005011
${NUMERO_CONTA}    430340443   # Conta Corrente Solidaria

*** Test Cases ***
# HABILITADO - DESBLOQUEADO PELO GERENTE - CC
Preencher Formulario CC - Test Case 1

    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  u675793
    Input Text  id=password  garra01!8B763ED
    Click Element    xpath=//input[@type='submit']
    Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[7]
    Sleep    2s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[7]/ul/li[5]/a/i  #ASAS
    Input Text  id=cartao   ${CARTAO}   
    Sleep    1s
    Click Element  xpath=//*[@id="form1"]/div[1]/div[2]/div
    Select From List By Label    id=tipos    603326 - RAPIDINHO MAESTRO
    Click Element  xpath=//*[@id="tpProduto"]
    Select From List By Label    id=tpProduto    Conta Corrente
    Input Text  id=conta  ${NUMERO_CONTA} 
    Click Element  xpath=//*[@id="situacao"]/option[165]
    Sleep    2s
    Click Element  xpath=//*[@id="form1"]/div[2]/input
    [Teardown]    Close Browser

# HABILITADO - DESBLOQUEADO PELO GERENTE - PP
Preencher Formulario PP - Test Case 2
    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  u675793
    Input Text  id=password  garra01!8B763ED
    Click Element    xpath=//input[@type='submit']
    Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[7]
    Sleep    2s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[7]/ul/li[5]/a/i  #ASAS
    Input Text  id=cartao   ${CARTAO}   
    Sleep    1s
    Click Element  xpath=//*[@id="form1"]/div[1]/div[2]/div
    Select From List By Label    id=tipos    603326 - RAPIDINHO MAESTRO
    Click Element  xpath=//*[@id="tpProduto"]
    Select From List By Label    id=tpProduto    Poupança
    Input Text  id=conta  ${NUMERO_CONTA} 
    Click Element  xpath=//*[@id="situacao"]/option[165]
    Sleep    2s
    Click Element  xpath=//*[@id="form1"]/div[2]/input
    [Teardown]    Close Browser



# Configurar senha de Autenticação

Configurar senha de Autenticação CC - Test Case 3
    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  u675793
    Input Text  id=password  !
    Click Element    xpath=//input[@type='submit']
    Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[8]/a
     Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[8]/ul/li[6]/a
    Input Text  id=conta  ${NUMERO_CONTA} 
    Select From List By Label   id=tipo  Conta Corrente
    Click Element  xpath=//*[@id="form1"]/div/div[5]/input[2]
     Sleep    1s
    Click Element  xpath=//*[@id="form1"]/div/div[5]/input[1]
     Sleep    2s
     [Teardown]    Close Browser

Configurar senha de Autenticação PP - Test Case 4
    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  u675793
    Input Text  id=password  garra77!8B763ED
    Click Element    xpath=//input[@type='submit']
    Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[8]/a
     Sleep    1s
    Click Element  xpath=/html/body/div/aside[1]/section/ul/li[8]/ul/li[6]/a
    Input Text  id=conta  ${NUMERO_CONTA} 
    Select From List By Label   id=tipo  Poupança
    Click Element  xpath=//*[@id="form1"]/div/div[5]/input[2]
     Sleep    1s
    Click Element  xpath=//*[@id="form1"]/div/div[5]/input[1]
     Sleep    2s
     [Teardown]    Close Browser