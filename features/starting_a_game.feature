Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering Player 1
		Given I am on the homepage
		When I follow "launch-name-input"
		Then I should see "What's your name?"
		When I fill "player" with "Jeremy"
			And I press "Go!"
		Then I should see "Welcome Jeremy please enter your opponent"

	Scenario: Registering Error Player 1
		Given I am on the homepage
		When I follow "launch-name-input"
		Then I should see "What's your name?"
		When I fill "player" with ""
			And I press "Go!"
		Then I should not see "Welcome Jeremy please enter your opponent"
		
	Scenario: Registering Player 2
		Given "Jeremy" has registered
		Then I should see "Welcome Jeremy please enter your opponent"
		When I fill "player" with "Talal"
			And I press "Go!"
		Then I should see "Battleships"
		

	Scenario: Registering Error Player 2
		
