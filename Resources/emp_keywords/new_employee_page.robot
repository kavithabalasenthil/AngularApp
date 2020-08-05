*** Settings ***
Documentation    Suite description
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Variables          ../Resources/login_objects.yaml
Variables          ../Resources/login_page_objects.yaml
Resource           ../Resources/emp_objects.robot

*** Keywords ***
new emp entry
    input text    ${firstname}    my_firstname
    input text    ${lastname}    my_lastname
    input text    ${startdate}    2020-01-01
    input text    ${email}    demo@abc.com
    click button    ${add}
    sleep    4