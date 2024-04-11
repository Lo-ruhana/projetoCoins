*** Settings ***
Resource    base.robot
Resource    keywords.robot




*** Test Cases ***
Perform DuckDuckGo Search
    Dado que eu acesso a tela inicial
    E preencho a barra de pesquisa
    Então visualizo o resultado da busca