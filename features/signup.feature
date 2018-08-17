Feature: Merchant SignUp Functionality Check

Scenario: Validation of the merchant details

Given Merchant is on SignUp Page
When Merchant does not enter any username
And clicks on submit
Then Merchant should view a message saying 'Username should not be empty'

Given Merchant is on SignUp Page
When Merchant enters invalid username
And clicks on submit
Then Merchant should view a message saying 'Enter valid username'

Given Merchant is on SignUp Page
When Merchant does not enter email
And clicks on submit
Then Merchant should view a message saying 'email should not be empty'

Given Merchant is on SignUp Page
When Merchant enters invalid email
And clicks on submit
Then Merchant should view a message saying 'Enter valid email'

Given Merchant is on SignUp Page
When Merchant does not enter any mobile number
And clicks on submit
Then Merchant should view a message saying 'Mobile Number should not be empty'

Given Merchant is on SignUp Page
When Merchant enters invalid mobile Number
And clicks on submit
Then Merchant should view a message saying 'Enter valid mobile number'

Given Merchant is on SignUp Page
When Merchant does not enter any password
And clicks on submit
Then Merchant should view a message saying 'password cannot be blank'

Given Merchant is on SignUp Page
When Merchant does not enter a valid password
And clicks on submit
Then Merchant should view a message saying 'Enter valid password'

Given Merchant is on SignUp Page
When Merchant does not enter confirm password
And clicks on submit
Then Merchant should view a message saying 'Passwords should Match'

Given Merchant is on SignUp Page
When Merchant and does not enter any security question
And clicks on submit
Then Merchant should view a message saying 'Select a security question'

Given Merchant is on SignUp Page
When Merchant and does not enter any security answer
And clicks on submit
Then Merchant should view a message saying 'Security answer cannot be empty'

Scenario: Merchant enters valid details

Given Merchant is on SignUp Page
When Merchant enters username
And Merchant enters email
And Merchant enters MobileNumber
And Merchant enters password
And Merchant reenters password
And Merchant enters security question
And Merchant enters security answer
And clicks on submit
Then Merchant should successfully register