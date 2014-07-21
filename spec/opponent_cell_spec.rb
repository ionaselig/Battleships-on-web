require 'opponent_grid'

describe OpponentCell do

	let(:cell) 							{ OpponentCell.new                	}
	let(:ship)							{ double :ship, :attack! => nil		}
	let(:occupied_cell)                 { cell.occupy_with(ship)			}

 	it 'shouldnt display @ if occupied by a ship' do
		expect(occupied_cell.display).to eq('~') 
	end
end