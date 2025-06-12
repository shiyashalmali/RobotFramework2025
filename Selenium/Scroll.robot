*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections

*** Variables ***
${browser}      Chrome
${url}          https://www.amazon.in/

*** Test Cases ***
Multiple Check Box
    [Documentation]    This testcase verifies that the user is able to successfully scroll on amazon.in
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[normalize-space()='About Amazon']    10s
    Scroll Element Into View         xpath=//a[normalize-space()='About Amazon']
    Sleep    2s
    Click Element                    xpath=//a[normalize-space()='About Amazon']
    Sleep    4s
    Element Should Be Visible        xpath=//div[@class='Page-header-bar']//span[1]//a[1]
    Close Browser