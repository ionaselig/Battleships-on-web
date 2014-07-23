require 'game'

describe Game do

	let(:game) 		{ Game.new																																		}
	let(:player1) { double :player1, :grid => grid1, :deploy_ships => nil, :display_grid => nil	}
	let(:player2)	{ double :player2																															}
	let(:grid1)		{ double :grid1, :count_sunken_ships => 5																			}

	it_should_behave_like 'a coordinate validator'

	context 'At the start of the game' do
	
		it 'should start with no players' do
			expect(game.players).to eq []
		end

		it 'can a a player' do
			game.add(player1)
			expect(game.players).to eq [player1]
		end

		it 'should know which is the current player' do
			expect(game.current_player).to be game.players[0]
		end

		it 'should know which is the other player' do
			expect(game.other_player).to be game.players[1]
		end
		
		it 'should have a status of nil initially' do
			expect(game.status).to be nil
		end

		it 'can start the game' do
			game.start_game
			expect(game.status).to be :started
		end

	end

	context 'In round n' do 

		it 'can change turns' do
			player1 = game.current_player
			game.change_turn
			expect(game.other_player).to be player1
		end

		it 'can declare victory' do
			game.add(player2)
			game.add(player1)
			expect(game.victory_declared).to be true
		end

		it 'can end the game' do
			game.end_game
			expect(game.status).to eq :ended
		end

		it 'can stop a player attacking the same cell twice' do
		
		end

	end

end
