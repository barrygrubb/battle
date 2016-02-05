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
		sign_in_and_play
		click_link('Attack')
		expect(page).to have_content 'Dave attacked Mittens'
	end
	scenario 'reduce player 2 HP by 10' do
		#browser_view
		sign_in_and_play
		click_link('Attack')
		click_link 'Ok'
		expect(page).not_to have_content 'Mittens: 60HP'
		expect(page).to have_content 'Mittens: 50HP'
	end
end

feature 'attack player one' do
	scenario'see that switch worked' do
		sign_in_and_play
		click_link('Attack')
		click_link('Ok')
		click_link('Attack')
		expect(page).to have_content 'Mittens attacked Dave'
	end
end
