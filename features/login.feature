Feature: Merchant Login Functionality
Scenario: Merchant Login with Valid Username and Invalid password

Given Merchant is on SignIn Page
When Merchant does not enter username
And clicks on submit
Then Merchant should view a message saying 'Username cannot be empty'

Given Merchant is on SignIn Page
When Merchant enters invalid username
And clicks on submit
Then Merchant should view a message saying 'Enter valid username'

Given Merchant is on SignIn Page
When Merchant enters username who has not registered
And clicks on submit
Then Merchant should view a message saying 'Not a registered user'

Given Merchant is on SignIn Page
When Merchant does not enter password
And clicks on submit
Then Merchant should view a message saying 'Enter password'

Given Merchant is on SignIn Page
When Merchant enters invalid password
And clicks on submit
Then Merchant should view a message saying 'password is incorrect'

Given Merchant is on SignIn Page
When Merchant enters valid username and password
And clicks on submit
Then Merchant should be able to view home page