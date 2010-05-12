Feature: Latest links show up in atom feed
  In order to see interesting links from edenites
  I want to view an Atom feed of the latest links

  Scenario: One link
    Given a link
    When I view the atom feed
    Then I see one feed item
    And I see the first link is the first feed item
