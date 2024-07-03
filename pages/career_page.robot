*** Settings ***
Library           Browser

*** Keywords ***
Open Career Page
    [Arguments]    ${base_url}
    New Page    ${base_url}/careers

Click Job Position
    Click    css=a.icon-primart-cta.primary-cta[href="https://multitude.bamboohr.com/jobs/"]

Switch To New Tab
    ${new_page}=    Switch Page    NEW
