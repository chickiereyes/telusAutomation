*** Settings ***
Resource                        ../../resources/keywords/common_setup.robot
Resource                        ../../resources/keywords/api/common_api_keywords.robot
Resource                        ../../resources/keywords/api/group/pokemon_keywords.robot

*** Variables ***
${session_name}                 getListSession

*** Test Cases ***
Get List of All Pokemon
    ${response} =    List All Pokemon    ${session_name}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}

Get "Bulbasaur" in the List
    ${response} =    List Pokemon By "bulbasaur"    ${session_name}
    Should Be Equal As Numbers    ${response.status_code}    200
    Should Be Equal As Strings    ${response.json()['forms'][0]['name']}    bulbasaur
    Log    ${response.json()}
