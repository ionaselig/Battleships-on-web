require './lib/cell'
require './lib/grid'

	class CurrentPlayerGrid < Grid
		def create_cells
			Array.new(size) { Array.new(size) { Cell.new } }
		end
	end 
