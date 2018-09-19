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
@tag
Feature: Compliance Data Consolidation: Risk Actions/Lift Assessments upload
  I want to use this template for my feature file

  @RegressionChrome 
  Scenario: I upload an invalid Risk Actions upload template
    Given I navigate to "http://ohgstaapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a file
    Then the message "Conversion Error in line 2 Field:RiskAssessmentDueDate; Value: '' to Date"

  @RegressionChrome
  Scenario: I upload an valid Risk Actions upload template
    Given I navigate to "http://ohgstaapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a valid file
    And I click on the upload button
    Then the message "File Uploaded Successfully " should be displayed

  @RegressionChrome
  Scenario: I upload an invalid Risk Actions upload template
    Given I navigate to "http://ohgintapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a file
    Then the message "Conversion Error in line 2 Field:RiskAssessmentDueDate; Value: '' to Date"

  @RegressionChrome
  Scenario: I upload an valid Lift assessment upload template
    Given I navigate to "http://ohgintapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a valid Lift Assessment file
    And I click on the upload button
    Then the message "File Uploaded Successfully" should be displayed

  @RegressionChrome
  Scenario: I upload an valid Lift Assessment upload template
    Given I navigate to "http://ohgintapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a duplicate Lift Assessment file
    And I click on the upload button
    Then the message "has already been uploaded into the DB" should be displayed

  @RegressionChrome
  Scenario: I upload an valid Lift assessment upload template
    Given I navigate to "http://ohgstaapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a valid Lift Assessment file
    And I click on the upload button
    Then the message "File Uploaded Successfully" should be displayed

  @RegressionChrome
  Scenario: I upload an valid Lift Assessment upload template
    Given I navigate to "http://ohgstaapp01.ohg.local:9050/"
    And I click on the Uploads
    And I choose to upload a duplicate Lift Assessment file
    And I click on the upload button
    Then the message "has already been uploaded into the DB" should be displayed
 
 
 
 
 
 
 
 
 
 
  #@scenariotwo
  #Scenario: I login with valid credent
   # Given I navigate to "http://the-internet.herokuapp.com/login"
    #And I enter "tomsmith" into input field having id "usernamed"
    #And I enter "SuperSecretPassword!" into input field having id "password"
