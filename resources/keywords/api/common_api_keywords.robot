*** Keywords ***
Send GET Request
    [Documentation]    Create a GET session based on the Base URL and to only the suffix of the endpoint to be called
    [Arguments]    ${session_name}    ${url_suffix}
    Disable Insecure Request Warnings
    Create Session    ${session_name}    ${BASE_URL}
    ${response} =    GET On Session    alias=${session_name}    url=${url_suffix}
    RETURN    ${response}

Disable Insecure Request Warnings
    [Documentation]    This will prevent insecure warning from showing up in the log/result
    Evaluate    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)    modules=urllib3
