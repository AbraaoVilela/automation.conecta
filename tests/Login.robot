*Settings*
Documentation             Suite De Teste De Login Do Administrador

Resource                  ../resources/Base.robot
Suite Setup               Start Browser Session
Test Teardown             Take Screenshot

*Variables*
${FIELD_USERNAME}        xpath=//*[@name="email"]
${USERNAME}              cassia.canha@mailinator.com
${FIELD_PASSWORD}        xpath=//*[@name="password"]
${PASSWORD}              Teste123*
${BUTTON_LOGIN}          xpath=//*[@type="submit"]


*Test Cases*

 #  [Teardown]            Clear Local Storage And Take Screenshot

Cenario De Teste 01: Login No Conecta Com Senha Incorreta
    [tags]                02
    Go To Login Page 
    auth.Login With        ${USERNAME}
    ...                    SenhaIncorreta

Cenario De Teste 02: Login No Conecta Com Usuario Incorreto
    [tags]                03
    Go To Login Page 
    auth.Login With        TesteUserIncorreto
    ...                    ${PASSWORD}

Cenario De Teste 03: Login No Conecta Com Usuario Vazio
    [tags]                04
    Go To Login Page 
    auth.Login With        ${EMPTY}
    ...                    ${PASSWORD} 

Cenario De Teste 04: Login No Conecta Com Senha Vazio
    [tags]                05
    Go To Login Page 
    auth.Login With        TesteSenhaVazia
    ...                    ${EMPTY} 

Cenario De Teste 05: Login No Conecta Com User e Pass Vazio
    [tags]                06
    Go To Login Page 
    auth.Login With        ${EMPTY}
    ...                    ${EMPTY} 

Cenario De Teste 06: Login No Conecta Com Sucesso
    [tags]                01
    Go To Login Page 
    Login With            ${USERNAME}
    ...                   ${PASSWORD}

    Sleep                 10

