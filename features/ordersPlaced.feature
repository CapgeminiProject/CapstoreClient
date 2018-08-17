Feature: OrdersPlaced check

Scenario: Merchant is on orders placed page

Given Merchant is on orders placed page
When Merchant wants to view all the orders placed
Then Merchant must be able to view all the details of the products that has been placed