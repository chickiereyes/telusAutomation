*** Settings ***
Resource                        ../../resources/keywords/common_setup.robot
Resource                        ../../resources/keywords/web/common_web_setup_keywords.robot
Resource                        ../../resources/keywords/web/pages/testing_form_keywords.robot
Suite Setup                     Initialization
Suite Teardown                  Terminate Run


*** Test Cases ***
Successful webform submission
    Given User Navigate to the Testing Form
    When User Fills Out the Testing Form
    Then Thanks For Submitting Should Be Visible

Submit with required fields only
    Given User Navigate to the Testing Form
    When User Fills Out All Required Fields Only
    Then Thanks For Submitting Should Be Visible

Submit webform without filling out the form
    Given User Navigate to the Testing Form
    When User Clicks Submit Button
    Then Verify Error on Required Fields