*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Variables          ../Resources/login_objects.yaml
Variables          ../Resources/login_page_objects.yaml
Resource           ../Resources/emp_objects.robot

*** Keywords ***
login
    Input Text    ${username}    Luke
    input text    ${password}    Skywalker
    click button    ${login}
    sleep    5


validation
    page should contain    Hello Luke