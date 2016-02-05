require 'game'

describe Game do 
	let(:mittens) {double :mittens}

describe '#attack' do
    	it 'damages the player' do
      		expect(mittens).to receive(:receive_damage)
      		subject.attack(mittens)
   		end
  	end
end
