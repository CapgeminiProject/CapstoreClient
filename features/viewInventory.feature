Feature: View Inventory Functionality Check

Scenario: Merchant is on view inventory page

Given Merchant is on inventory page
When Merchant clicks on update 
Then Merchant should be redirected to Update Product page

When Merchant is on inventory page1
Then all the list is viewd by the merchant