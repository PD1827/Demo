#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

#@tag
#Feature: Title of your feature
  #I want to use this template for my feature file
#
  #@tag1
  #Scenario: Title of your scenario
    #Given I want to write a step with precondition
    #And some other precondition
    #When I complete action
    #And some other action
    #And yet another action
    #Then I validate the outcomes
    #And check more outcomes
#
  #@tag2
  #Scenario Outline: Title of your scenario outline
    #Given I want to write a step with <name>
    #When I check for the <value> in step
    #Then I verify the <status> in step
#
    #Examples: 
      #| name  | value | status  |
      #| name1 |     5 | success |
      #| name2 |     7 | Fail    |

      
Feature: Login senarios

Scenario Outline: Login with invalid username
When I enter username as "<username>"
And I enter password as "<password>"
And I login
Then Login should fail with an error message "<err>"
Examples:
| username  | password | err  |
| invalidusername | 10203040 | Provided credentials do not match any user in this service. |


Scenario Outline: Login with invalid password
When I enter username as "<username>"
And I enter password as "<password>"
And I login
Then Login should fail with an error message "<err>"
Examples:
| username  | password | err  |
| bob@example.com | invalidpassword | Provided credentials do not match any user in this service. |

Scenario Outline: Login with valid details
When I enter username as "<username>"
And I enter password as "<password>"
And I login
Then I should see products page with title "<title>"
Examples:
| username  | password | title  |
| bob@example.com | 10203040 | Products |





  