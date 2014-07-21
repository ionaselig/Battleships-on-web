require './lib/water'
require './lib/attacked_cell'
require './lib/hit'
require './lib/miss'
require './lib/cell'


class OpponentCell < Cell 
	def display
		'-'
	end
end