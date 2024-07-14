*** Variables ***
${LABEL_Testing_Form}                           //span[contains(@class, 'wixui-rich-text__text')]
${LABEL_Name}                                   //label[@for='input_comp-l46hci9f1']
${INPUT_Name}                                   //input[@id='input_comp-l46hci9f1']
${LABEL_Email}                                  //label[@for='input_comp-l46hci9k2']
${INPUT_Email}                                  //input[@id='input_comp-l46hci9k2']
${LABEL_Desired_Position}                       //label[@for='collection_comp-l46hci9n']
${SELECT_Desired_Position}                      //select[@id="collection_comp-l46hci9n"]
${SELECT_QAE}                                   css=option.R4tv1w:nth-child(1)
${LABEL_Phone}                                  //label[@for='input_comp-l46hci9w']
${INPUT_Phone}                                  //input[@id='input_comp-l46hci9w']
${LABEL_Date_Of_Availability}                   //label[@for='input_comp-l46hci9y2']
${BUTTON_Date_Of_Availability}                  //div[@id='comp-l46hci9y2']
${DATEPICKER_Month_Next}                        //*[@id="portal-comp-l46hci9y2"]/div[2]/div[1]/div[1]/button[2]
${DATEPICKER_Date}                              //*[@id="portal-comp-l46hci9y2"]/div[2]/div[2]/table/tbody/tr[5]/td[5]/button/span
${LABEL_Expected_Salary}                        //label[@for='input_comp-l46hcia3']
${INPUT_Expected_Salary}                        //input[@id='input_comp-l46hcia3']
${LABEL_Years_Of_Experience}                    //*[@id="comp-l46hcia44"]/fieldset/legend/div
${OPTION_Years_Of_Experience}                   //*[@id="comp-l46hcia44"]/fieldset/div/label[2]/div[1]
${LABEL_Skills}                                 css=test-dataid='label'
${CHECKBOX_Manual_Testing}                      //*[@id="0_comp-l46hcia82"]/input
${CHECBOX_API_Testing}                          //*[@id="1_comp-l46hcia82"]/input
${CHECKBOX_Automated_Testing}                   //*[@id="2_comp-l46hcia82"]/input
${CHECKBOX_Extra_Cheese}                        //*[@id="3_comp-l46hcia82"]/input
${Checkbox_I_have_answered}                     //*[@id="comp-l46hciac1"]/input
${BUTTON_Submit}                                //*[@id="comp-l46hciae3"]/button
${LABEL_Thanks_for_submitting}                  //*[@id="comp-l46hciag3"]/span/p/span

# ----------------------------
#       List of Elements
# ----------------------------
@{required_fields}
...    ${INPUT_Name}
...    ${INPUT_Email}
...    ${SELECT_Desired_Position}

# ----------------------------
#       Error Assertion
# ----------------------------
${EXPECTED_BORDER_COLOR}                        rgba(var(--brde,246,4,25), 1)

# ----------------------------
#         Test Data
# ----------------------------
${phone_number}                                 (02) 1234 5678
${expected_salary}                              100000
