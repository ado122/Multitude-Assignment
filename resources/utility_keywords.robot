*** Settings ***
Library           Browser

*** Keywords ***
Take Full Page Screenshot
    [Arguments]    ${file_path}
    Take Screenshot    ${file_path}    fullPage=True
