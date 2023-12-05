*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}      https://testingqa-office.nexcloud.id/testingqa/automation/webui/login


*** Keywords ***
Open my browser
    Open Browser    ${URL}    chrome

Close Browser
    SeleniumLibrary.Close Browser

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}
    Sleep    1

Input Username
    [Arguments]    ${password}
    SeleniumLibrary.Input Password    password    ${password}
    Sleep    1
