Feature: Remove Products Functionality

Scenario: Merchant enter invalid product id
Given Merchant remove product page
When Merchant does not enter product id
Then Merchant should get a message saying 'Product id cannot be empty' 
When Merchant enter invalid product id
Then Merchant should get a message saying 'Enter valid product id'

Scenario: Merchant enter valid product id
Given Merchant is on remove product in home page
When Merchant enter product id
Then Merchant should get a message saying 'Product is successfully removed'
