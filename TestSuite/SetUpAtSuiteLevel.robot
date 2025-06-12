*** Settings ***
Suite Setup     Launch Browser
Suite Teardown      Close the db conncetion
Resource        ../Resources/Resource.robot

*** Test Cases ***
Testcase1
        Log To Console    Execute testcase1

*** Test Cases ***
Testcase2
        Log To Console    Execute testcase2

*** Test Cases ***
Testcase3
        Log To Console    Execute testcase3

