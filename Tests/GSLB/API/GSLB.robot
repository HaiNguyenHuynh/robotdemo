*** Settings ***
Library  RequestsLibrary
Resource  Resources/Common.robot

*** Variables ***
${Base_URL}     http://localhost:5000

*** Test Cases ***
Get all regions of application
    ${session}=   Common.Login Gateway
    ${response_data}=    get request  ${session}    traffic-steering/regions?applicationId=470793
    log to console  ${response_data.content}
