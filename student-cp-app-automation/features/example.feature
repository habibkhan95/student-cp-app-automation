Feature: Example feature


  Scenario: Select either of the options on Main Menu I(Requirement 1)
    Given I am on the Home screen
    Then I should be displayed with two buttons

#Cannot perform due to calabash not supporting Maps View
  # Scenario: Search for users manually I (Requirement 2)
  #   Given I am on the Home screen
  #   And I tap the 'browse for nearby shoppers' button
  #   Then I should be displayed with results on Goolge Maps

#Cannot perform due to calabash not supporting Maps View
  # Scenario: Get recommendations of other students similar to my items of interest II (Requirement 2)
  #   Given I am on the Home screen
  #   And I tap the 'select edit items' of interest button
  #   And I select atleast one item
  #   And I tap the Find Match button
  #   Then I should be able to visually see recommendations

#Cannot perform due to calabash not supporting Maps View
  # Scenario: View profile of other students (Requirement 3)
  #   Given I am on the Home screen
  #   And I tap the 'browse for nearby shoppers' button
  #   And I tap on a icon
  #   Then I should be able to view the other user's profile



#**********************************************************************************************
  Scenario Outline: View all possible items to select from (Requirement 4)
    Given I am on the Home screen
    And I tap the 'select edit items' of interest button
    Then I should be able to view <items>

    Examples:
        |        items       |
        | Bread              |
        | Semi-Skimmed Milk  |
        | Toilet Paper       |
        | Kitchen Tissue     |
        | Coca-Cola          |
        | Pasta              |
        | Fairy Liquid       |
        | Bleach             |
        | Washing Powder     |
        | Fabric Conditioner |
        | Shampoo            |
        | Alcohol            |
        | Mineral Water      |
        | A4 Printing Paper  |
        | Meat / Chicken     |
        | Window Cleaner     |
        | Cleaning Wipes     |
        | Revision Note-pads |
        | Sports Supplements |

#***********************************************************************************************

  Scenario: Clear all items selected (Requirement 5)
    Given I am on the Items selection screen
    And I select multiple items
    When I tap the 'Clear Selection' button
    Then All items selected should be de-selected

#Cannot perform due to calabash not supporting Maps View
  # Scenario: Algorithm to recommend other students (Requirement 6)
  #   Given I select the first five items from the list
  #   And I tap the Find Match button
  #   Then I should be displayed with Sophie and Romero

  Scenario: Navigate back to the home screen I(Requirement 7)
    Given I am on the Items selection screen
    And I tap the Home button on the top nav bar
    Then I should be redirected to the Main Menu

    Scenario: Navigate back to the home screen II (Requirement 7)
      Given I am on the Maps screen
      And I tap the Home button
      Then I should be redirected to the Main Menu

#Cannot perform due to calabash not supporting Maps View
    # Scenario: Navigate back to the home screen III (Requirement 7)
    #   Given I am on the Profile screen
    #   And I tap the Home button on the top nav bar
    #   Then I should be redirected to the Main Menu

#Cannot perform due to calabash not supporting Maps View
    # Scenario: Allow users to contact other students (Requirement 8)
    #   Given I am on Sophie's profile screen
    #   And I tap the Email button
    #   Then I should be directed to the Email app with appropriate fields filled in

  @test_this
      Scenario: View splash screen (Requirement 9)
        Given The Splash screen is displayed
        Then I should be taken to the Main Menu
