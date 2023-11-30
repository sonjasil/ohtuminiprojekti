*** Settings ***
Resource  resource.robot

*** Test Cases ***

Input Invalid Command
    Ask For Input
    Input  abc
    Output Should Contain  Invalid input

Input Listing Command When No References
    Input  l
    Ask For Input
    Output Should Not Contain  Invalid input

Input Listing Command When References
    Create Test Reference
    Input  l
    Ask For Input
    Output Should Contain  test (Entry_type: article, Author: me, Title: hello, Journal: what, Year: 1991)\n