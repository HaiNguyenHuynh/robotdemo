*** Settings ***
Library  RequestsLibrary

*** Keywords ***
Login Gateway
    [Arguments]  ${Base_URL}    ${username}     ${password}
    create session      gslb    ${Base_URL}
    ${data}=    Evaluate    {'username': (None, ${username}), 'password': (None, ${password})}
    post request    gslb    login  files=${data}
    [Return]  $gslb