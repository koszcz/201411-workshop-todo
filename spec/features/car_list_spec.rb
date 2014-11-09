require 'rails_helper'

describe 'Car management', type: :feature do

	context 'signing' do

		it 'should log user with correct credentials' do
			User.destroy_all
			User.create!(email: "a@a.pl", password: "12341234")

			visit '/'
			click_link 'Sign in'

			fill_in 'Email', with: 'a@a.pl'
			fill_in 'Password', with: '12341234'

			click_button 'Log in'

			expect(page).to have_content('Sign out')
		end
	end

	context 'showing cars list' do

		it 'shows empty list when no cars' do
			visit '/cars'
			expect(page).to have_content('No cars')
		end

	end

end