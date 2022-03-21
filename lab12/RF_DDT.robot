*** Settings ***
Library           Collections
Library           CSVLibrary
Library           SeleniumLibrary
Library           OperatingSystem
Library           String
Library           Collections

*** Test Cases ***
SignIn_DDT
    Open Browser    http://nodegoat.herokuapp.com/login
    Input Text    id=userName    user1
    Input Text    id=password    User1_123
    Click Button    xpath=//button[@type='submit']
    Close Browser
