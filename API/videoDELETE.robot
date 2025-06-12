*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://videogamedb.uk:443/
${Servicename}     api/v2/videogame/1


*** Test Cases ***
Post request example
        RequestsLibrary.Create Session      baseURI     ${base_url}        verify=False
#        ${headers}=       Create Dictionary       x-api-key=reqres-free-v1
        ${response}=        DELETE On Session      baseURI      ${Servicename}

        Log     ${response}
        Log     ${response.status_code}
