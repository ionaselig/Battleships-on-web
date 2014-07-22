Feature: Playing the game
	In order to win battleships
	As a nostalgic player
	I want to play the game

Scenario: Prepare for Battle
	Given I am on the prepare_battle page
	When I see ships to be placed
	Then I fill in "First Coordinate" with "a1"
	Then I fill in "First Coordinate" with "a2"
	When I press 'Order Ships to WAR!'
	Then I go to my game_interface page

Scenario: Hit
	Given I am on my game_interface page
	When I see "Please order fire?" 
	Then I fill in "Fire Coordinate" with "a1"
	When I press 'FIRE'
	Then I should see 'X' on opponent view 
	Then I should see 

Scenario: Miss
	Given I am on my game_interface page
	When I see "Please order fire?" 
	Then I fill in "Fire Coordinate" with "a1"
	When I press 'FIRE'
	Then I should see 'O' on opponent view 
	Then I should not see "Please order fire?"

Scenario: Game Over
	Given all my ships are sunk
	Then I will see "Game Over, you a dead man"

Scenario: Victory
	Given all my ships are not sunk
	Then I will see "VICTORY!""