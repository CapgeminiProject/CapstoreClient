Feature: Forgot Password Functionality
Scenario: Merchant forgets the password
Given Merchant is on ForgotPassword Page
When Merchant does not enter username
And clicks on submit
Then Merchant views a message saying 'username cannot be blank'

Given Merchant is on ForgotPassword Page
When Merchant enters invalid username
And clicks on submit
Then Merchant views a message saying 'not yet registered'

Given Merchant is on ForgotPassword Page
When Merchant enters valid username
And clicks on submit
Then Merchant should go to SecurityQuestionPage

