require_relative 'game'

class Player
	attr_reader :name, :hit_points 

	DEFAULT_HIT_POINTS = 60
	
	def initialize(name, hit_points=DEFAULT_HIT_POINTS)
		@hit_points = hit_points
		@name = name
	end

	def receive_damage
		@hit_points -= 10
	end
end