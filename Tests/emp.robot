*** Settings ***
Documentation     Suite description
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Resource          ../Resources/emp_keywords/emp_keywords.robot
Variables         ../Resources/emp_objects.yaml
Variables         ../Resources/emp_data.yaml

*** Test Cases ***
cafetownsend
    open webpage
    login
    validation
    create emp
    new emp entry
    close webpage
