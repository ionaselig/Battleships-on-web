require './lib/water'
require './lib/attacked_cell'
require './lib/hit'
require './lib/miss'


class OpponentCell < Cell 
	def display
		'~'
	end
end