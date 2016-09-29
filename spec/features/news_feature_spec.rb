feature 'News', :vcr do

	scenario 'should have a list of media sources' do
		sign_user_up
		visit news_path
		expect(page).to have_content 'Guardian'
		expect(page).to have_content 'Financial Times'
		expect(page).to have_content 'BBC Sport'
	end

end