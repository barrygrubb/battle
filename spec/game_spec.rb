require 'game'

describe Game do 
	#et(:game)    {double Game.new}
	let(:dave) 	  {double :dave}
	let(:mittens) {double :mittens}
	subject(:game){described_class.new(:dave, :mittens)}

	it'accepts two instances' do 
		expect(subject.player1).to eq :dave
	end

	describe '#attack' do
    		it 'damages the player' do
      			expect(mittens).to receive(:receive_damage)
      			subject.attack(mittens)
   			end
  	end

end
