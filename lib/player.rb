require_relative 'grid'
require_relative 'cell'
require_relative 'ship'

class Player

	attr_accessor :grid, :ships
	attr_reader :name

	def initialize(name)
		@name = name
		@grid = Grid.new()
		@ships = ship_factory
	end

	def shoot_at(opponent_grid, at_coordinate)
		opponent_grid.attack_cell(at_coordinate)
	end

	def deploy_ship_to(coordinates, ship)
		coordinates.each do |coordinate|
			@grid.cell(coordinate).occupy_with(ship)
		end
	end

	def ship_factory
		[ AircraftCarrier.new,
			Battleship.new,
			Destroyer.new,
			Submarine.new,
			PatrolBoat.new
		]
	end

	def count_sunken_ships
		ships.select(&:sunk?).count
	end

end
	
