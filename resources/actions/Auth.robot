*Settings*
Documentation        Acoes de Autorizacoes

*Variables*
${BROWSER}                chromium
${URL}                    https://telemedicinaqas.einstein.br/login
${FIELD_USERNAME}         xpath=//*[@name="email"]
${FIELD_PASSWORD}         xpath=//*[@name="password"]
${BUTTON_LOGIN}           xpath=//*[@type="submit"]

*Keywords*
Go To Login Page 
    Go To                 ${URL}

Login With
    [Arguments]           ${USERNAME}
    ...                   ${PASSWORD}

    Fill Text             ${FIELD_USERNAME}
    ...                   ${USERNAME} 
    Fill Text             ${FIELD_PASSWORD}
    ...                   ${PASSWORD}

    Click                 ${BUTTON_LOGIN}