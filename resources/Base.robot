*Settings*
Documentation     Arquivo Base Do Projeto

Library           Browser

Resource          actions/Auth.robot

*Variables*
${BROWSER}                chromium
${URL}                    https://conecta-qas.telemedicinaeinstein.com.br/login

*Keywords*
Start Browser Session
    New Browser            ${BROWSER}           
    ...                    False
    New Page               about:blank

Clear Local Storage And Take Screenshot
    Take Screenshot
    LocalStorage Clear

Thinking And Take Screenshot
    [Arguments]       ${TIMEOUT}
    Sleep             ${TIMEOUT}