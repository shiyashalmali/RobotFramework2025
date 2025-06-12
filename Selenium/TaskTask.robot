*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections

*** Variables ***
${browser}      Firefox
${url}      https://omayo.blogspot.com/
${TEXTAREA_XPATH}    //textarea[normalize-space()='The cat was playing in the garden.']
${path}     C:\\Users\\shssh\\Pictures\\Screenshots\\Screenshot.png
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements} =        Get WebElements    xpath://select[@id='multiselect1']
        FOR    ${element}    IN    @{elements}
            Select From List By Label    xpath://select[@id='multiselect1']       Volvo
            Sleep    2s
            Unselect From List By Label    xpath://select[@id='multiselect1']     Volvo
            Sleep    2s
            Select From List By Label    xpath://select[@id='multiselect1']       Swift
            Sleep    2s
            Unselect From List By Label   xpath://select[@id='multiselect1']     Swift
            Sleep    2s
            Select From List By Label    xpath://select[@id='multiselect1']       Hyundai
            Sleep       2s
            Unselect From List By Label    xpath://select[@id='multiselect1']       Hyundai
            Sleep    2s
            Select From List By Label    //select[@id='multiselect1']       Audi
            Sleep       2s
            Unselect From List By Label    //select[@id='multiselect1']       Audi
            Sleep    2s
        END


        @{labels}=      Get Selected List Labels    id:drop1
        Log To Console    @{labels}
        Select From List By Label    id:drop1      Older Newsletters
        Sleep    2s
        Select From List By Label    id:drop1      doc 1
        Sleep    2s
        Select From List By Label    id:drop1      doc 2
        Sleep    2s
        Select From List By Label    id:drop1      doc 3
        Sleep    2s
        Select From List By Label    id:drop1      doc 4
        Sleep    2s


        Click Element    xpath://a[@id='link1']
        Sleep    2s
        Go Back
        Sleep    2s
        Click Element    xpath://div[@id='HTML27']//a[@id='link2']
        Sleep    2s
        Page Should Contain Element    xpath://a[normalize-space()="'Public' Access specifier"]
        Go Back
        Sleep    2s

        Input Text    xpath://textarea[@id='ta1']    Hi How are you        timeout=5
        Sleep    4s


        Click Element    xpath://button[@id='but2']
        Sleep    1
        Clear Element Text    xpath://textarea[normalize-space()='The cat was playing in the garden.']
        Sleep    1
        Input Text    css:div[id='HTML11'] textarea    This is Admin
        Sleep    2


         Sleep    2s
         Click Element    xpath://div[@id='HTML27']//div[@class='widget-content']
         Sleep    2s
         Go Back


        Sleep    2s
        Click Element    xpath://button[normalize-space()='Submit']
        Sleep    2s
        Click Element    xpath://button[normalize-space()='Login']
        Sleep    2s
        Click Element    xpath://button[normalize-space()='Register']
        Sleep    2s


        Sleep    2s
        Input Text    xpath://form[@name='form1']//input[@type='text']    admin
        Sleep    2s
        Input Text    xpath://form[@name='form1']//input[@type='password']    admin123
        Sleep    2s
        Click Element    xpath://button[normalize-space()='LogIn']


#Search the blog
         Input Text    xpath://input[@name='q']    admin
         Sleep    2s
         Click Element    xpath://input[@value='Search']


#Radio Button
        Page Should Contain Radio Button    xpath://input[@type='radio']          timeout=5
        Sleep    2s
        Select Radio Button    gender    male
        Sleep    2s
        Select Radio Button    gender    female


        Click Element    id:alert1
        Sleep   2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    2s

         ${elements}=        Get WebElements    xpath://input[@name='color']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END


        Click Element    xpath://input[@id='prompt']
        Sleep    7s
        Input Text Into Alert    Dhrithi
        Sleep    7s


#Upload photo
        Sleep    2s
        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    2s


#Simple login
        Input Text    xpath://input[@name='userid']    Admin
        Sleep    1s
        Input Text    xpath://input[@name='pswrd']    admin123
        Sleep    1s
        Click Element    xpath://input[@value='Login']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    3s
        Close Browser