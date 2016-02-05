require 'game'
require 'player'

describe Game do
	#et(:game)    {double Game.new}
	# let(:dave) 	  {double :dave}
	# let(:mittens) {double :mittens}
	subject(:game){described_class.new(:dave, :mittens)}
	subject(:dave){Player.new(:dave)}
	subject(:mittens){Player.new(:mittens)}

	it'accepts two instances' do
		expect(game.player1).to eq :dave
	end

# 	describe '#attack' do
#     		it 'damages the player' do
# 					  game.attack
#       			expect(mittens).to receive(:receive_damage)
#    			end
#   	end
#
end
