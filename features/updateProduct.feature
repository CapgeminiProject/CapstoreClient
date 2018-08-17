Feature: Update Product Functionality

Scenario: Merchant enter invalid product id
Given Merchant is on home page
When Merchant clicks on update product 
And enter wrong product id
Then Merchant should get a message saying 'Enter valid product id'

Scenario: Merchant enter valid product id
Given Merchant is on home page
When Merchant clicks on update product 
And enter correct product id
Then Merchant should get all the product details

Given Merchant is on update product page to update the product details 
When Merchant update the product name
And click on submit
Then Merchant should get a message saying 'product name updated successfully'

When Merchant update the product brand
And click on submit
Then Merchant should get a message saying 'product brand updated successfully'

When Merchant update the product quantity
And click on submit
Then Merchant should get a message saying 'product quantity updated successfully'

When Merchant update the product price
And click on submit
Then Merchant should get a message saying 'product price updated successfully'

When Merchant update the product description
And click on submit
Then Merchant should get a message saying 'product description updated successfully'

When Merchant update the product status
And click on submit
Then Merchant should get a message saying 'product status updated successfully'

When Merchant update the product category
And click on submit
Then Merchant should get a message saying 'product category updated successfully'