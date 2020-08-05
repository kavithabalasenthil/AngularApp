*** Settings ***
Documentation    Suite description
Documentation     webpage open close
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Variables          ../Resources/login_objects.yaml
Variables          ../Resources/login_page_objects.yaml
Resource           ../Resources/emp_objects.robot

*** Keywords ***
open webpage
    open browser       ${url}          ${browser}
    set ignore implicit angular wait    ${False}
    maximize browser window
close webpage
    close browser