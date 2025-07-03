Feature: Edge Cases for Routines in Parental Control App

  Scenario: User selects a start time later than end time
    Given the user is creating a routine
    When they set the start time to 21:00 and end time to 08:00
    Then the app should show a validation error or auto-adjust the times

  Scenario: User creates two routines with overlapping time ranges on the same weekdays
    Given a routine is scheduled from 17:00 to 19:00 on Monday
    When the user creates another routine from 18:00 to 20:00 on Monday
    Then the app should show a conflict warning or prevent overlap

  Scenario: User creates a routine with no weekdays selected
    Given the user is configuring a routine
    When they deselect all weekdays
    Then the "Save" button should be disabled or show a warning

  Scenario: User tries to save a routine without a name
    Given the user is creating a custom routine
    When they leave the name field blank
    Then the app should display a "Name is required" error

  Scenario: User tries to create two routines with the same name
    Given a routine named "Study Time" already exists
    When the user tries to create another routine with the same name
    Then the app should prompt for a unique name or automatically adjust it

  Scenario: User blocks all apps and selects no exceptions
    Given the user selects "Block all apps"
    When they do not select any app exceptions
    Then all apps should be blocked and a confirmation should be shown

  Scenario: User allows all websites and disables adult content
    Given the user allows all websites
    And disables access to adult content
    Then the adult content filter should override the general rule

  Scenario: User tries to save a routine without internet
    Given the user is editing a routine
    When they tap "Save" without internet connection
    Then the app should display a "Connection error" and prevent saving

  Scenario: Routine affected by device timezone change
    Given a routine is scheduled from 22:00 to 06:00
    When the user changes device timezone by +2 hours
    Then the routine should adjust accordingly or notify the user

  Scenario: User rapidly creates and deletes routines
    Given the user adds and deletes 3 routines in under 10 seconds
    Then the app should remain stable and not crash
