require 'grid'

describe Grid do

	let(:grid) 				{ Grid.new													}
	let(:ship) 				{ double :ship 											}
	let(:sunken_ship) { double :sunken_ship, sunk?: true 	}
	let(:cell)				{ double :cell, attack!: cell   		}

	context 'Size:' do

		it 'should have a default size of 10' do
			expect(grid.size).to eq Grid::DEFAULT_SIZE
		end

		it 'can be initialized with a size of N' do
			expect(Grid.new(size: 12).size).to eq 12
		end

	end

	context 'Cells in grid:' do

		it 'should hold cells' do
			expect(grid.cells.is_a?(Array)).to be true
		end

		it 'should hold size x size number of cells on initialization' do
			expect(grid.cell_count).to eq grid.size**2
		end

		it 'should be able to return a specific cell by reference' do
			expect(grid.cell(:a1)).to eq grid.cells[0][0]
			expect(grid.cell(:j10)).to eq grid.cells[9][9]
		end

		it 'should be able to be attacked' do
			expect(grid.cell(:a1)).to receive(:attack!)
			grid.attack_cell(:a1)
		end

	end

	context 'Ships in the grid:' do

		it 'it can hold ships' do
			expect(grid.ships.is_a?(Array)).to be true
		end

		it 'should have no ships initially' do
			expect(grid.ships).to be_empty
		end

		it 'a ship can be added' do
			grid.add_ship(ship)
			expect(grid.ships).not_to be_empty
		end

		it 'it can count sunk ships' do
			grid.add_ship(sunken_ship)
			expect(grid.count_sunken_ships).to be 1
		end

	end

end
