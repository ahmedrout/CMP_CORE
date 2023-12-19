*** Settings ***
Library   SeleniumLibrary
Library   RequestsLibrary
Variables   ../Resources/locators.py
Variables   ../Resources/testdata.py

*** Variables ***
${site_url}        https://cmp.medadstg.com/



    

*** Keywords ***
login by admin
    Open Browser    https://cmp.medadstg.com/login       chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@name="username"]    timeout=10s
    Input Text    ${username}    ${username_value}
    Sleep    1
    Input Text    ${password}    ${password_value}
    Sleep    1
    Wait Until Page Contains Element    ${submit_button}    timeout=15s
    Click Element	${submit_button}
    Wait Until Page Contains Element    ${avatar_Element}   timeout=15s
select Enrollment tap
    Wait Until Page Contains Element  ${enrollment_Element}
    Sleep    2
    Click Element   ${enrollment_Element}
select class Enrollment doctype    Wait Until Page Contains Element  ${class_enrollment_Element} 
    Sleep    2
    Click Element   ${class_enrollment_Element}
    
press add button
    Wait Until Page Contains Element  ${enrollment_button}
    #Sleep    2    
    Click Element    ${enrollment_button}
fill class Enrollment forme
    Click Element    ${student_fieldname}
    Wait Until Page Contains Element  ${student_fieldname_doctype}
    Click Element    ${student_fieldname_doctype}

    Click Element    ${academic_term}
    Wait Until Page Contains Element  ${academic_term_doctype}
    Click Element    ${academic_term_doctype}

    Click Element    ${course_Element}
    Input Text    ${course_Element}    Eng101
    Wait Until Page Contains Element  ${course_Element_doctyp}
    Click Element    ${course_Element_doctyp}

    Click Element    ${class_Element}
    Wait Until Page Contains Element  ${class_Element_doctyp}
    Click Element    ${class_Element_doctyp}
    Sleep    2


    Click Element    ${Class_Enrollment}
    Wait Until Page Contains Element  ${Class_Enrollment_doctyp}
    Click Element    ${Class_Enrollment_doctyp}

    Click Element    ${enrollment_status}
    Wait Until Page Contains Element  ${Enrolled_status}
    Click Element    ${Dropped_status}

    Click Element    ${checkbox}
    
    
submmite forme
     Execute Javascript    window.scrollTo(0,0)
     Wait Until Page Contains Element    ${submmite_forme}
     Click Element    ${submmite_forme}

Succfully submitt
    Wait Until Page Contains Element  ${Succfully_submitt}

Error message
    Wait Until Page Contains Element  ${Error_message}


select mass Enrollment doctype    Wait Until Page Contains Element  ${mass_enrollment_element} 
    Sleep    2
    Click Element   ${mass_enrollment_element}
    
press add New Mass Enrollment button
    Wait Until Page Contains Element  ${New_Mass_Enrollment_button}    10s
    Sleep    1    
    Click Element    ${New_Mass_Enrollment_button}
fill mass Enrollment forme
    Wait Until Page Contains Element   ${Academic_Term_fieldname}     10s
    Click Element    ${Academic_Term_fieldname}
    Wait Until Page Contains Element  ${Academic_Term_fieldname_doctype}    10s
    Sleep    1
    Click Element    ${Academic_Term_fieldname_doctype}

    Click Element    ${Add_Row}
    Wait Until Page Contains Element  ${select_student}
    Sleep    1
    Click Element    ${select_student}
    Wait Until Page Contains Element  //input[@placeholder='Student ID']
    Input Text    //input[@placeholder='Student ID']    S-2023-00199
    Wait Until Page Contains Element  ${student_id}
    Click Element    ${student_id}

    Click Element    ${action_fieldname}
    Wait Until Page Contains Element  ${action}
    Click Element    ${action}
    Sleep    1

    Click Element    ${Default_Enrolled_status}
    Wait Until Page Contains Element  ${Enrolled_status}
    Sleep    1
    Click Element    ${Enrolled_status}




Delete a Record From Doctype by API

    [Arguments]    ${doctype}    ${name}

    # Create a list with two authorization values

    ${authorization}=    Create List    9ad1c1c3b2920e7     4076adc2f2534da

    # ${authorization}=    Create List    252817e5f57819a    5733e5215768994

    # Create a session named 'Deletecampus' with site URL and headers

    Create Session    Delete    ${site_url}    auth=${authorization}

    # Define the payload dictionary for deletion

    ${payload}=    Create Dictionary    doctype=${doctype}    name=${name}

    # Make a DELETE request on the session to delete the campus record

    DELETE On Session    Delete    /api/method/frappe.client.delete    json=${payload}

    Status Should Be    200

    Log To Console    \n the ${doctype} ${name} is deleted successfully


select academic-structure tap
    Wait Until Page Contains Element  ${academic_structure} 
    Sleep    2
    Click Element   ${academic_structure}


select Campus doctype
    Wait Until Page Contains Element  ${Campus_doctype}
    Sleep    2
    Click Element   ${Campus_doctype}


press add Campus button
    Wait Until Page Contains Element  ${Campus_button}
    Sleep    2    
    Click Element    ${Campus_button}


Edit full forme
    Sleep    1
    Wait Until Page Contains Element    ${Edit_full_forme}
    Click Element   ${Edit_full_forme}


fill Campus forme
    Wait Until Page Contains Element    ${fill_Campus_forme}
    Input Text    ${fill_Campus_forme}    ${Campus_Name}

    Input Text    ${Campus_Code}    1005

    Sleep    1
    Input Text    ${Campus_location}      ${Campus_location_data}
    Sleep    1
    Press Keys    ${Campus_location}    ${Press_Keys}
    Sleep    1
    #Click Element    //*[@id="page-Campus"]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/div/div/div[2]/div[2]/div/div/form/div[4]/div/div[2]/div[1]/div/div/input
