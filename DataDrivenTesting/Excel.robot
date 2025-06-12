*** Settings ***
Library     DataDriver       C:\\Users\\shssh\\PycharmProjects\\PythonProject\\JuneRoboFwEGIndia2025\\TestData\\ddtLogindataCSV.csv       sheet_name=ddtLogindataCSV
Library     SeleniumLibrary
Resource        ../Resources/DDTKeywords.robot

Suite Setup     Launch App
Suite Teardown    Close App
Test Template       InvalidLogin


*** Test Cases ***
Login with user ${username} and ${password}     Default UserData


*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2s
        Set Email    ${username}
        Sleep    2s
        Set Password    ${password}
        Sleep    2s
        Click Login
        Sleep    2s
        Error Message Should be Visible