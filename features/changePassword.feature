Feature: Change Password Functionality

Scenario: Merchant does not enter valid details and clicks on change password

Given Merchant is on ChangePassword Page
When Merchant does not enter old password
And clicks on change password
Then Merchant views a message saying 'old password cannot be empty'

Given Merchant is on ChangePassword Page
When Merchant does not enter new password
And clicks on change password
Then Merchant views a message saying 'new password cannot be empty'

Given Merchant is on ChangePassword Page
When Merchant does not enter confirm password
And clicks on change password
Then Merchant views a message saying 'this password must be similar to new password'

Given Merchant is on ChangePassword Page
When enters password which is not equal to new password
And clicks on change password
Then Merchant views a message saying 'this password must be similar to new password'

Scenario: Merchant enters valid details and clicks on change password

Given Merchant is on ChangePassword Page
When Merchant enters old password
And Merchant enters new password
And Merchant enters confirm new password
And clicks on change password
Then Merchant views a message saying 'password changed successfully'