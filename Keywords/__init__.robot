*** Variables ***
${Username}       student2
${Password}       Testing1
${Browser}        Chrome
${SiteUrl}        http://automationpractice.com/index.php
${DashboardTitle}    Dashboard - Mahara
${Delay}          5s

*** Keywords ***
Open Website
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
