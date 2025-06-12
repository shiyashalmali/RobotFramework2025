*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://reqres.in/
${Servicename}     api/users/2


*** Test Cases ***
Post request example
        RequestsLibrary.Create Session      baseURI     ${base_url}        verify=True
        ${headers}=       Create Dictionary       x-api-key=reqres-free-v1
        ${response}=        DELETE On Session      baseURI      ${Servicename}      headers=${headers}

        Log     ${response}
        Log     ${response.status_code}
