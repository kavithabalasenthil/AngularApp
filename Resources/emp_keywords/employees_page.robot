*** Settings ***
Documentation    employee page
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Variables          ../Resources/login_objects.yaml
Variables          ../Resources/login_page_objects.yaml
Resource           ../Resources/emp_objects.robot

*** Keywords ***
create user
    click link    ${create}
    sleep    2
