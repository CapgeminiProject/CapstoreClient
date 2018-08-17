Feature: Add Products Functionality

Scenario: Merchant add invalid product details
Given Merchant is on add product page
When Merchant does not enter product name
Then Merchant should get a message saying 'Product name cannot be empty'
When Merchant enter invalid product name
Then Merchant should get a message saying 'Enter valid product name'

When Merchant does not enter product brand
Then Merchant should get a message saying 'Product brand cannot be empty'
When Merchant enter invalid product brand
Then Merchant should get a message saying 'Enter valid product brand'

When Merchant does not enter product quantity
Then Merchant should get a message saying 'Product quantity cannot be empty'
When Merchant enter invalid product quantity
Then Merchant should get a message saying 'Enter valid product quantity'

When Merchant does not enter product price
Then Merchant should get a message saying 'Product price cannot be empty'
When Merchant enter invalid product price
Then Merchant should get a message saying 'Enter valid product price'

When Merchant does not enter product description
Then Merchant should get a message saying 'Enter product description'

When Merchant does not enter product status
Then Merchant should get a message saying 'Enter Product status'

When Merchant does not enter product category
Then Merchant should get a message saying 'Product category cannot be empty'

Scenario: Merchant add valid product details
Given Merchant is on add product page
When Merchant enter product name
And Merchant enter product brand
And Merchant enter product quantity
And Merchant enter product price
And Merchant enter product description
And Merchant enter product status
And Merchant enter the product category
And click on submit 
Then Merchant will be successfully redirected to view inventory page