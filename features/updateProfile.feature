Feature: Updating merchant profile functionality

Scenario: Merchant is on update profile page

Given Merchant is on update profile page
When Merchant wants to update username and enters new username
Then the message 'username updated succefully' should be displayed. 

Given Merchant is on update profile page
When Merchant wants to update username and enters blank username
Then the message 'Username should not be blank' should be displayed. 

Given Merchant is on update profile page
When Merchant wants to update username and enters invalid new username
Then the message 'Please enter valid username' should be displayed. 

Given Merchant is on update profile page
When Merchant wants to update email and enters new email
Then the message 'email updated succefully' should be displayed. 

Given Merchant is on update profile page
When Merchant wants to update email and enters blank email
Then the message 'email should not be blank' should be displayed. 

Given Merchant is on update profile page
When Merchant wants to update email and enters inavlid email
Then the message 'Please enter valid email' should be displayed. 