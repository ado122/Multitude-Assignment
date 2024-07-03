*** Settings ***
Library           Browser

*** Keywords ***
Verify Job Link Matches Page URL
    [Arguments]    ${expected_jobs_href}    ${job_href}    ${job_title}
    ${current_url}=    Get Url
    Should Be Equal As Strings    ${current_url}    ${expected_jobs_href}/careers
    ${actual_job_href}=    Get Attribute    css=a.jss-f73[href="${job_href}"]    href    
    ${expected_url}=    Set Variable    ${expected_jobs_href}${actual_job_href}
    Click    css=a.jss-f73[href="${job_href}"]    
    ${current_url}=    Get Url
    Should Be Equal As Strings    ${current_url}    ${expected_url}
    ${text}=    Get Text    xpath=//h2[text()='${job_title}']
    Should Be Equal As Strings    ${text}    ${job_title}
