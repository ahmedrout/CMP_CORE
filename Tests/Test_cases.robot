*** Settings ***
Resource    ../Pages/core.robot

*** Variables ***
${site_url}        https://cmp.medadstg.com/


*** Test Cases ***
Login by admin username
   login by admin

Create class Enrollment
    login by admin
    select Enrollment tap
    select class Enrollment doctype
    press add button
    fill class Enrollment forme
    submmite forme
    Error message
    

Create mass Enrollment
    login by admin
    select Enrollment tap
    select mass Enrollment doctype
    press add New Mass Enrollment button
    fill mass Enrollment forme
    submmite forme
    #Error message


 Create mass Enrollment with Run Moode
    login by admin
    select Enrollment tap
    select mass Enrollment doctype
    press add New Mass Enrollment button
    fill mass Enrollment forme
    select student
    click run button
    



Deletecampus by api
    Delete a Record From Doctype by API    Campus    test 5


Create Campus and delete by api
    login by admin
    select academic-structure tap
    select Campus doctype
    press add Campus button
    Edit full forme
    fill Campus forme
    submmite forme
    Succfully submitt
    [Teardown]    Delete a Record From Doctype by API    Campus    test 5

    