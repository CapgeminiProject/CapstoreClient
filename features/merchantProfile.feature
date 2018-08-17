Feature: Checking merchant profile functionality

Scenario: Merchant is accessing my profile page

Given Merchant is on my profile page
When user wants to change password and clicks on change password

Given Merchant is on my profile page
When merchant clicks on update profile
Then he must be redirected to update profile page.