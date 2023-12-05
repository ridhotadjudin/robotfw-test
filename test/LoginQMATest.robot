*** Settings ***
Documentation       Login QMA Testing

Library             SeleniumLibrary
Resource            ../resource/keywords/login_resources.robot

Test Setup          Open my browser
Test Teardown       login_resources.Close Browser
Test Template       Login QMA


*** Test Cases ***
Username benar password benar    [Documentation]    jangan ganti password
    [Tags]    positive
    ridho    ridho202208001
Username kosong password benar    [Tags]    negative
    ${EMPTY}    ridho202208001
Username benar password kosong    [Tags]    negative
    ridho    ${EMPTY}

# ${testcase}    ${username}    ${password}
#    [Tags]
#    [Documentation]


*** Keywords ***
Login QMA
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    login_resources.Input Password    ${password}
    Click login
