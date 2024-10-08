Feature: File Upload
  As a user
  I want to upload an Excel file
  So that I can view the uploaded data

  Scenario: Successful file upload
    Given I am on the new upload page
    When I upload an Excel file "test_data.xlsx"
    Then I should see "File uploaded successfully!"

  Scenario: Attempting to upload without a file
    Given I am on the new upload page
    When I do not upload a file
    Then I should see "Please choose a file to upload."
