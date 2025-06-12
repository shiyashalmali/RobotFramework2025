*** Settings ***
Library     SeleniumLibrary
Variables   ./../variables.py

*** Variables ***
${name}     John
${city}     Bangalore
@{list1}    red     blue    greem
&{dict}     username=Admin      password=admin123

*** Test Cases ***
Define variables
        Log     ${name}
        Log     ${city}
        Log     ${list1}
        Log     ${list1[0]}
        FOR    ${element}    IN    @{LIST1}
            Log    ${element}
        END
        Log    ${dict}[username]
        Log    ${dict}[password]

Set variables at Testcase level
    Set Test Variable    ${address}     ringroad
    Log    ${address}

Set variables at global level

    Log    ${username}
    Log    ${password}