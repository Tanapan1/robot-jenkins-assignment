*** Settings ***
Library  RequestsLibrary
Create Session  api_session  http://localhost:8080
*** Test Cases ***
Test true when x is 17
    [Documentation]  Test the /plus/a/b endpoint of the API
    [Tags]  API
      # Adjust the URL based on your API's address and port

    # Test case for positive numbers
    ${response}  GET On Session  api_session  /is_prime/17
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  ${True}

Test false when x is 36
    [Documentation]  Test the /plus/a/b endpoint of the API
    [Tags]  API
      # Adjust the URL based on your API's address and port

    # Test case for positive numbers
    ${response}  GET On Session  api_session  /is_prime/36
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  ${True}


Test True when x is 13219
    [Documentation]  Test the /plus/a/b endpoint of the API
    [Tags]  API
      # Adjust the URL based on your API's address and port

    # Test case for positive numbers
    ${response}  GET On Session  api_session  /is_prime/13219
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  ${True}

*** Keywords ***
Should Be Equal As Numbers
    [Arguments]  ${actual}  ${expected}
    Should Be Equal  ${actual}  ${expected}