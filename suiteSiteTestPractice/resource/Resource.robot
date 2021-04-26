*** Settings ***
LIbrary   SeleniumLibrary



*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}  chrome

*** Keywords ***
### Iniciando Setup e Teardown
Abrir navegador
    Open Browser  http://automationpractice.com/index.php   ${BROWSER}

Fechar navegador
    Close Browser

### Passo-a-Passo
Acessar a página home do site
    Title Should Be  My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Element    name=submit_search
