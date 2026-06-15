*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://jangada
${USERNAME}    
${PASSWORD}    
${CARTAO}    6033261481005011
${NUMERO_CONTA}    430340443

*** Test Cases ***
# HABILITADO - DESBLOQUEADO PELO GERENTE - CC
Preencher Formulario CC
    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  MeuUsuario
    Input Text  id=password  MinhaSenha
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
    Sleep    15s
    Click Element  xpath=//*[@id="form1"]/div[2]/input
    [Teardown]    Close Browser

# HABILITADO - DESBLOQUEADO PELO GERENTE - PP
Preencher Formulario PP
    [Setup]    Open Browser    ${URL}    chrome
    Maximize Browser Window  
    Input Text  id=username  u675793
    Input Text  id=password  garra77!8B763ED
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
    Sleep    15s
    Click Element  xpath=//*[@id="form1"]/div[2]/input
    [Teardown]    Close Browser

  #  Input Text    xpath=//*[@id="cartao"]    ${CARTAO}
 #   Select From List By Value    xpath=//*[@id="tipos"]    68  # rapdinho maestro
#    Select From List By Value    xpath=//*[@id="tipos"]    58  # poupança
   # Select From List By Value    xpath=//*[@id="tpProduto"]    1  # Conta corrente
   # Select From List By Value    xpath=//*[@id="tpProduto"]    2  # Conta poupança
   # Input Text    xpath=//*[@id="conta"]    ${NUMERO_CONTA}
   # Click Element    xpath=//*[@id="form1"]/div[1]/div[5]/div/input[1]  # Pessoa física
   # Select From List By Value    xpath=//*[@id="situacao"]    165  # desbloquear pelo gerente
    #Close Browser