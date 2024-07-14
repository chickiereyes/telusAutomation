*** Settings ***
Resource            ../../../variables/web/pages/testing_form_variables.robot


*** Keywords ***
# ----------------------------
#            Steps
# ----------------------------

Input Name
    ${name} =    Generate Random String    10     [LETTERS]
    Set Suite Variable    ${name}     Test ${name}
    Input Text    ${INPUT_Name}    ${name}

Input Email
    ${email_address} =    Generate Random String    10    [LETTERS]
    Set Suite Variable    ${email_address}    ${email_address}@hotmail.com
    Input Text    ${INPUT_Email}    ${email_address}

Select Desired Position
#    Click Element    ${SELECT_Desired_Position}
    Select From List By Value    ${SELECT_Desired_Position}    QAE

Input Phone
    Input Text    ${INPUT_Phone}    ${phone_number}

Select a Date Of Availability
    Click Element    ${BUTTON_Date_Of_Availability}
    Click Element    ${DATEPICKER_Month_Next}
    Click Element    ${DATEPICKER_Date}


Input Expected Salary
    Input Text    ${INPUT_Expected_Salary}    ${expected_salary}

Click Years of Experience
    Click Element    ${OPTION_Years_Of_Experience}

Click Skills
    Click Element    ${CHECKBOX_Manual_Testing}
    Click Element    ${CHECBOX_API_Testing}
    Click Element    ${CHECKBOX_Automated_Testing}
    Click Element    ${CHECKBOX_Extra_Cheese}

Click "I have answered..." Checkbox
    Click Element    ${Checkbox_I_have_answered}

Click Submit Button
    Click Element    ${BUTTON_Submit}


# ----------------------------
#         WHEN Steps
# ----------------------------
User Fills Out the Testing Form
    Input Name
    Input Email
    Select Desired Position
    Input Phone
    Select a Date Of Availability
    Input Expected Salary
    Click Years of Experience
    Click Skills
    Click "I have answered..." Checkbox
    Click Submit Button
    Execute Manual Step    Complete CAPTCHA

User Fills Out All Required Fields Only
    Input Name
    Input Email
    Select Desired Position
    Select a Date Of Availability
    Click Skills
    Click "I have answered..." Checkbox
    Click Submit Button
    Execute Manual Step    Complete CAPTCHA

User Clicks Submit Button
    Click Submit Button

# ----------------------------
#          Assertion
# ----------------------------
Thanks For Submitting Should Be Visible
    Wait Until Element Is Visible    ${LABEL_Thanks_for_submitting}

Verify Error on Required Fields
    Set Suite Variable    ${element_state}    true
    FOR    ${element}    IN    @{required_fields}
        ${element_error} =    Get Element Attribute    ${element}    aria-invalid
        Log To Console    Field error state: ${element_error}
        Should Contain    ${element_error}    ${element_state}
    END
    ${date_picker_color}    Get Webelement    ${BUTTON_Date_Of_Availability}
    ${EXPECTED_BORDER_COLOR}    Call Method    ${date_picker_color}    value_of_css_property    border-color