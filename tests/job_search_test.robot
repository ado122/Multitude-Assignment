*** Settings ***
Documentation     Test to verify navigation and URLs to job positions on Multitude Job Site.
Library           Browser
Resource          ../pages/career_navigation.robot
Resource          ../pages/career_page.robot
Resource          ../pages/career_positions_page.robot
Resource          ../resources/utility_keywords.robot

*** Variables ***
${BASE_URL}             https://www.multitude.com
${EXPECTED_JOBS_HREF}   https://multitude.bamboohr.com
${JOB_TITLE}            Software Test Engineer
${JOB_HREF}             /careers/1131
${SCREENSHOT_PATH}      ${OUTPUTDIR}/screenshot/job_description

*** Test Cases ***
Verify navigation and URLs to job positions
    [Documentation]    Verifies that the job search functionality works as expected.
    [Tags]             job_search
    Open Browser And Navigate To Job Site    ${BASE_URL}
    Click Job Position
    Switch To New Tab
    Verify Job Link Matches Page URL    ${EXPECTED_JOBS_HREF}    ${JOB_HREF}    ${JOB_TITLE}
    Take Full Page Screenshot    ${SCREENSHOT_PATH}
