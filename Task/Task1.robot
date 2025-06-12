*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${browser}      Firefox

${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***

Verify login success with valid credentials

        [Documentation]     This test case verifies that user is able to successfully Login to the internet.registerpage

        Open Browser        ${url}      ${browser}

        Maximize Browser Window

        Wait Until Element Is Visible       //input[@id='firstname']      timeout=5

        Input Text    //input[@id='firstname']    new

        Input Text    //input[@id='lastname']     admin

        Input Text    //input[@id='username']    newadmin

        Input Text    //input[@id='password']    admin123

        Click Element    //input[@value='Register']

        Close Browser

