*** Settings ***
Resource                        ../../../variables/api/common_api_setup_variables.robot
Resource                        ../../../variables/api/group/pokemon_variables.robot
Resource                        ../common_api_keywords.robot


*** Keywords ***
List All Pokemon
    [Arguments]    ${session_name}
    ${response} =    Send GET Request    ${session_name}    ${pokemon_url}
    RETURN    ${response}

List Pokemon By "${identifier}"
    [Arguments]    ${session_name}
    ${response} =    Send GET Request    ${session_name}    ${pokemon_url}/${identifier}
    RETURN    ${response}