require 'capybara/dsl'
require 'selenium-webdriver'

	def browser_view
 		include Capybara::DSL
 		Capybara.default_driver = :selenium
	end
feature 'Enter names' do 
	scenario 'submitting names' do 
		sign_in_and_play
		expect(page).to have_content "Dave vs. Mittens"
	end
end

feature 'View hitting points' do 
	scenario'see player 2 hit points' do 
		sign_in_and_play
		expect(page).to have_content 'Mittens: 60HP'
	end
end

feature 'attack player two' do 
	scenario'see attack confirmed' do
		browser_view
	sign_in_and_play
	expect(page).to have_content 'Dave attacked Mittens'
	end
end 

