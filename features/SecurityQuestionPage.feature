Feature: Security Question Page Functionality

Scenario: Invalid details for Security Question and Security Answer
Given Security Question Page
When merchant enters wrong security answer
Then merchant views a message saying 'Not a Valid user'

Scenario: valid details for Security Question and Security Answer
Given Security Question Page
When merchant enters correct security answer
Then merchant views old password.
