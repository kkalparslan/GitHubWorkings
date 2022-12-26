Feature: Account Type

  Scenario: Second user
    Given User should be on the login page
    When User should input "eddiem@kraft.com" and "eddiem12"
    Then The user name should be "Eddie Murphy"

  Scenario: Mr.HAsan Github
    Given User should be on the login page
    When User should input "morganfreeman@kraft.com" and "mfreeman"
    Then The user name should be "Morgan Freeman"

  Scenario Outline: Different <name> user type
    Given User should be on the login page
    When User should input "<userEmail>" and "<password>"
    Then The user name should be "<name>"

    Examples:
      | userEmail | password | name |
      | mike@gmail.com | mike1234 | Harun |
      | eddiem@kraft.com | eddiem12 | Eddie Murphy |
      | morganfreeman@kraft.com | mfreeman | Morgan Freeman |
      | krafttech@kraft.com | Test1234 | Kyle Masters |