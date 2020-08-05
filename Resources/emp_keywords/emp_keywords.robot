*** Settings ***
Documentation     Suite description
Library           SeleniumLibrary
Library           AngularJSLibrary    root_selector=body
Variables         ../emp_objects.yaml
Variables         ../emp_data.yaml

*** Keywords ***
open webpage
    open browser    ${url}    ${browser}
    set ignore implicit angular wait    ${False}
    maximize browser window

login
    Input Text    ${username}    Luke
    input text    ${password}    Skywalker
    click button    ${login}
    sleep    5

validation
    page should contain    Hello Luke

create emp
    click link    ${create}
    sleep    2

new emp entry
    input text    ${firstname}    my_firstname
    input text    ${lastname}    my_lastname
    input text    ${startdate}    2020-01-01
    input text    ${email}    demo@abc.com
    click button    ${add}
    sleep    4

close webpage
    close browser
