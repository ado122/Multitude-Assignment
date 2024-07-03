*** Settings ***
Library           Browser

*** Variables ***
${COOKIE_NAME}          __CookieConsentV300
${COOKIE_VALUE}         {"consent":{"necessaryCookie":true,"performanceCookies":true,"marketingCookies":true},"accepted":true,"id":"668564877cbef60008e1dfdc"}
${COOKIE_DOMAIN}        www.multitude.com
${COOKIE_PATH}          /
${COOKIE_EXPIRES}       2024-12-30T14:47:35.000Z

*** Keywords ***
Open Browser And Navigate To Job Site
    [Arguments]    ${base_url}
    New Browser    chromium    headless=False
    New Context
    Add Cookie    name=${COOKIE_NAME}    value=${COOKIE_VALUE}    domain=${COOKIE_DOMAIN}    path=${COOKIE_PATH}    expires=${COOKIE_EXPIRES}
    New Page    ${base_url}/careers
