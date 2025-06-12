*** Test Cases ***
Login
        Login

AddToCart
        AddToCart

*** Keywords ***
Login
        [SetUp]     Launch browser
        [Teardown]      Close the browser
        Log To Console    Logging to application
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    user is navigated to home page

AddToCart
        [SetUp]     Launch browser
        [Teardown]      Close the browser
        Log To Console    Adding products to cart
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    user is navigated to home page
        Log To Console    User adds the product to cart
        Log To Console    User validates that the product is added to cart

Launch browser
        Log To Console    Lauching the browser
Close the browser
        Log To Console    Closing the browser
