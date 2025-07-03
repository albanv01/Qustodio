Feature: Routines in Parental Control App

  Scenario: User navigates to Rules and sees the Routine section
    Given the user is on the Rules screen
    Then they should see the "Routines" section

  Scenario: User opens Routines section with no existing routines
    Given the user is on the Rules screen
    When they tap the "Routines" section
    Then they should see an empty list with no routines

  Scenario: User clicks Add Routine
    Given the user is viewing the Routines section
    When they tap the "Add Routine" button
    Then a drawer should open with routine type options:
      | Study         |
      | Entertainment |
      | Focus         |
      | Bedtime       |
      | Custom        |

  Scenario Outline: User selects a predetermined routine
    Given the user opens the Add Routine drawer
    When they select "<routine_type>"
    Then they should be able to choose:
      | Start time |
      | End time   |
      | Weekdays   |

    Examples:
      | routine_type  |
      | Study         |
      | Entertainment |
      | Focus         |
      | Bedtime       |

  Scenario: User selects App & Website Rules in Custom routine
    Given the user opens the Add Routine drawer
    When they select "Custom"
    And they choose "App & Website rules"
    Then they should see two options:
      | Allow all apps |
      | Block all apps |
    And they should be able to select app exceptions
    And they should see two website options:
      | Allow all websites |
      | Block all websites |
    When they choose "Allow all websites"
    Then they should be able to unselect adult-only content categories
    And they should be able to set:
      | Routine name  |
      | Color         |
      | Icon          |
      | Description   |
      | Start time    |
      | End time      |
      | Weekdays      |

  Scenario Outline: User selects a device-blocking custom routine
    Given the user opens the Add Routine drawer
    When they select "Custom"
    And they choose "Device blocks"
    And they select "<block_type>"
    Then they should be able to set:
      | Routine name  |
      | Color         |
      | Icon          |
      | Description   |
      | Start time    |
      | End time      |
      | Weekdays      |

    Examples:
      | block_type              |
      | Disconnect the internet |
      | Lock devices            |

  Scenario: User edits a custom routine
    Given a custom routine is created
    When the user opens the routine settings
    Then they can:
      | Change rules               |
      | Enable/disable time slots |
      | Edit style (name, color, icon) |

  Scenario: User edits a predetermined routine
    Given a predetermined routine is created
    When the user opens the routine settings
    Then they can:
      | Enable/disable time slots |
      | Edit app rules            |
      | Edit website rules        |
      | Edit style (name, color, icon) |

  Scenario: User deletes a routine
    Given a routine exists
    When the user taps "Delete"
    Then they should be prompted to confirm the deletion