Feature: Checking Merchant Home Page Functionality

Scenario: Merchant home page
Given Merchant is on home page
When Merchant enters valid product name
Then all the products with that name should be displayed


Given Merchant is on home page
When Merchant enters valid category name
Then all the products with that category name should be displayed

Given Merchant is on home page
When Merchant enters valid brand name
Then all the products with that brand name should be displayed


Given Merchant is on home page
When Merchant clicks on add products
Then he should be redirected to my add products page.

Given Merchant is on home page
When Merchant wants to remove products by entering valid product id
Then  the message 'product removed successfully' should be displayed.

Given Merchant is on home page
When Merchant enters invalid product id to remove product
Then the message 'Enter valid product Id' should be displayed.

Given Merchant is on home page
When Merchant clicks on update products
Then he should be redirected to update page.


Given Merchant is on home page
When Merchant clicks on my profile
Then he should be redirected to my profile page.

Given Merchant is on home page
When Merchant clicks on my Inventory
Then he should be redirected to my inventory page.

Given Merchant is on home page 
When Merchant Clicks on Orders by Customers
Then Merchant should be redirected to ordersby customers page.

