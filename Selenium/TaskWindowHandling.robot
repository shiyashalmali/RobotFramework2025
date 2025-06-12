*** Settings ***
Library     SeleniumLibrary
Library     XML

*** Variables ***
${browser}      Firefox
${url}          https://jqueryui.com/tabs/

*** Test Cases ***
Switch Between Tabs on jQuery UI Page
    [Documentation]    This test case demonstrates switching between tabs inside an iframe on jQueryUI Tabs page.
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Sleep    2s


    Select Frame    xpath=//iframe[@class='demo-frame']

    Click Element    xpath=//a[@href="#tabs-2"]
    Sleep    2s


    Click Element    xpath=//a[@href="#tabs-3"]
    Sleep    2s

    # Click on Tab 1 again
    Click Element    xpath=//a[@href="#tabs-1"]
    Sleep    2s

    Unselect Frame
    Close Browser