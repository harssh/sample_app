Feature: Request Account

  As a visitor to the website
  I want to request an account
  so I can be notified when the account is created

  Background:
    Given I am not logged in
    
Scenario: User views home page

When I visit home page
Then I should see a "Sign up" button


Scenario: User view account request form

When I visit home page
And I click a button "Sign up"
Then I should see a form with a field "Email"

Scenario: User signs up with valid data 

When I request an account with valid user data
Then I should see a message "Thank You"
And my email address is stored
And my account is not confirmed 
And I should get email with subject "Request received"


Scenario: User signs up with invalid email

When I request an account with Invalid email
Then I should see an invalid email msg

