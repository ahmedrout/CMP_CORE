*** Settings ***
Library   SeleniumLibrary
Library   RequestsLibrary
Library    XML
Library    Telnet
Variables   ../../Resources/locators.py
Variables   ../../Resources/testdata.py

*** Variables ***
${site_url}        https://cmp.medadstg.com/


*** Keywords ***

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
    Wait Until Page Contains Element  ${class_Element_doctyp
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
    Wait Until Page Contains Element  (//div[@data-fieldname="student_id"])[2]
    Click Element    (//div[@data-fieldname="student_id"])[2]
    Wait Until Page Contains Element    //input[@data-fieldname='student_id']
    Input Text    //input[@data-fieldname='student_id']    S-2023-00199
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

    Click Element    ${add_classes}
    Wait Until Page Contains Element  ${select_class}
    Sleep    1
    Click Element    ${select_class}
    Wait Until Page Contains Element  (//input[@placeholder='Class'])[1]
    Input Text    (//input[@placeholder='Class'])[1]    202410-انج 101-1-تمارين / عملي-117
    Wait Until Page Contains Element  ${class_name}
    Click Element    ${class_name}

    Click Element    ${add_classes}
    Wait Until Page Contains Element  ${select_class_2}
    Sleep    1
    Click Element    ${select_class_2}
    Wait Until Page Contains Element  (//input[@placeholder='Class'])[2]
    Input Text    (//input[@placeholder='Class'])[2]    202410-انج 101-1-نظري-091
    Wait Until Page Contains Element  ${class_name_2}
    Click Element    ${class_name_2}


select student
    # Mouse Down    locator
    Click Element    ${select_student}

    Sleep    1

click run button

    Mouse Down    (//input[@class='grid-row-check'])[3]
    click Element    (//input[@class='grid-row-check'])[3]
    Mouse Down    ${click_Run}
    Click Element    ${click_Run}
    # Element Text Should Be    //*[@id="page-Mass Enrollment"]/div[2]/div[2]/div/div[3]/div/div[1]/div[2]/div/div/div[2]/div[4]/div[2]/div/form/div[2]/div/div[2]/div/div[2]/div[1]/div/div/div[8]/div[2]    Success
    Wait Until Page Contains Element    //*[@id='alert-container']    timeout=10
    Page Should Contain    Saved     
