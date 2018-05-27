*** Settings ***
Test Setup        Open Website
Test Teardown     Exit Browser
Resource          ../Resource.robot

*** Variables ***
${VALID_USERNAME}    ggwp@hooq.com
${VALID_PASSWORD}    qwe123

*** Test Cases ***
Successfully Login
    Click Element    ${SignIn}
    Input Text    ${Email}    ${VALID_USERNAME}
    Input Text    ${Password}    ${VALID_PASSWORD}
    Click Element    ${Submit_SignIn}
    Page Should Contain Element    ${SignOut}
    Page Should Not Contain Element    ${Alert_bar}
