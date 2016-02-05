require_relative 'player'

class Game
	attr_reader :player1, :player2, :turn_pl1

	def initialize(player1, player2)
		@player1= player1
		@player2= player2
		@turn_pl1 = true
	end
def switch
	if @turn_pl1 == true
		@turn_pl1 = false
	else
		@turn_pl1 = true
	end
end
	def attack
		if @turn_pl1
		  @player2.receive_damage
		else
			@player1.receive_damage
		end
		switch
	end

end
