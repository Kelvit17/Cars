*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGN_IN_EMAIL} =          xpath=//*[@id="email"]
${SIGN_IN_PASSWORD} =       xpath=//*[@id="password"]
${LOGIN_SUBMIT_BUTTON} =    Sign in

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword if  '${Credentials.Email}' != '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    run keyword if  '${Credentials.Password}' != '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}