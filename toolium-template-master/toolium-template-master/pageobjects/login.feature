# Created by User at 17-Jan-17
C:\Users\User\Downloads\toolium-template-master\toolium-template-masterFeature: Login

  Scenario: successful login
    Given the home page is open
     When the user logs in with username "tomsmith" and password "SuperSecretPassword!"
     Then the message "You logged into a secure area!" is shown

  Scenario: successful logout
    Given the home page is open
     When the user logs in with username "tomsmith" and password "SuperSecretPassword!"
      And the user logs out
     Then the message "You logged out of the secure area!" is shown
