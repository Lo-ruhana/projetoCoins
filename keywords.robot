*** Settings ***
Resource    base.robot
*** Keywords ***
Dado que eu acesso a tela inicial
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
E preencho a barra de pesquisa
     Input Text    xpath=//html/body/div/main/article/div[1]/div[1]/div[2]/div/header/div/section[2]/form/div/input[2]   ${pesquise}
    Click Button    xpath=//html/body/div/main/article/div[1]/div[1]/div[2]/div/header/div/section[2]/form/div[1]/div/button[2]
    Wait Until Page Contains Element    xpath=//html/body/div[2]/div[6]/div[4]/div    10s
Então visualizo o resultado da busca
    ${result_count}=    Get Element Count    xpath=//h2/a
    Log To Console     ${result_count}

    FOR      ${element}   IN RANGE    1    11
    ${linkText}=    Get Text    xpath=(//h2/a)[${element}]
    Log To Console     Link: ${linkText}
    END

    
 
    
    Close Browser

