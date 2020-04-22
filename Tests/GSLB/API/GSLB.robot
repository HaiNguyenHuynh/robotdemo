*** Settings ***
Library  RequestsLibrary

*** Variables ***
${Base_URL}     http://localhost:5000

*** Test Cases ***
Get all regions of application
    create session      gslb    ${Base_URL}
    ${data}=    Evaluate    {'username': (None, 'gateway-user'), 'password': (None, '123456')}
    ${response}=  post request    gslb    login  files=${data}
    ${response_data}=    get request  gslb    traffic-steering/regions?applicationId=470793
    log to console  ${response_data.content}
