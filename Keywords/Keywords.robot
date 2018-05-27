*** Variables ***
${Browser}        Chrome
${SiteUrl}        http://automationpractice.com/index.php
${DashboardTitle}    My Store

*** Keywords ***
Open Website
    open browser    ${SiteUrl}    ${Browser}
    Title Should be    ${DashboardTitle}
    Maximize Browser Window

Exit Browser
    Close Browser
