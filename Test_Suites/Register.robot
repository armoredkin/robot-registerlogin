*** Settings ***
Test Setup        Open Website
Test Teardown     Exit Browser
Resource          ../Resource.robot

*** Variables ***
${Dash_Register}    Login - My Store
${FirstName}      Testing
${LastName}       Automation
${Pass}           qwerty
${Bdate}          24
${Bmonth}         7
${Byear}          1994
${Company}        HOOQ
${Address1}       Jl.Bumi Langit 99
${Address2}       District Alibaba, Oslo
${City}           Buitenzorg
${State}          37
${Postal}         00005
${Country}        21
${Info}           Near office building 404. Yellow gate.
${Phone}          031-9944994
${MobilePhone}    09999999999
${AddressAlias}    Cool Address

*** Test Cases ***
Registration_Success
    Wait Until Page Contains Element    ${SignIn}    10s
    # Go to Sign Up page
    Click Element    ${SignIn}
    Wait Until Page Contains Element    ${Email_Fields}    10s
    Title Should be    ${Dash_Register}
    # Generate new email for registration
    ${first}=    Generate Random String    4    [LETTERS]
    ${second}=    Get Current Date    result_format=%Y%m%d%H%M%S
    Set Global Variable    ${Random_Email}    ${first}${second}@hooq.com
    Input Text    ${Email_Fields}    ${Random_Email}
    # Click create account and go to registration form
    Click Element    ${Create_Acc}
    Wait Until Page Contains Element    ${MR}    10s
    # Fill all fields in personal information
    Click Element    ${MR}
    Input Text    ${Cust_FirstName}    ${FirstName}
    Input Text    ${Cust_LastName}    ${LastName}
    ${EmailOnSite}=    Get Value    ${Email}
    Should Be Equal As Strings    ${EmailOnSite}    ${Random_Email}
    Input Text    ${Password}    ${Pass}
    Select From List By Value    ${BirthDate}    ${Bdate}
    Select From List By Value    ${BirthMonth}    ${Bmonth}
    Select From List By Value    ${BirthYear}    ${Byear}
    Click Element    ${News_Check}
    Click Element    ${Offer_Check}
    # Fill all fields in Your Address section
    ${AddressFirstName}=    Get Value    ${Add_FName}
    Should Be Equal As Strings    ${AddressFirstName}    ${FirstName}
    ${AddressLastName}=    Get Value    ${Add_LName}
    Should Be Equal As Strings    ${AddressLastName}    ${LastName}
    Input Text    ${Add_Company}    ${Company}
    Input Text    ${Add_Address1}    ${Address1}
    Input Text    ${Add_Address2}    ${Address2}
    Input Text    ${Add_City}    ${City}
    Select From List By Value    ${Add_State}    ${State}
    Input Text    ${Add_Postal}    ${Postal}
    Select From List By Value    ${Add_Country}    ${Country}
    Input Text    ${Add_Other}    ${Info}
    Input Text    ${Add_Phone}    ${Phone}
    Input Text    ${Add_MPhone}    ${MobilePhone}
    Input Text    ${Add_Alias}    ${AddressAlias}
    # Register and verify registration success
    Click Element    ${Register}
    Page Should Contain Element    ${SignOut}
    Page Should Contain    ${FirstName} ${LastName}
