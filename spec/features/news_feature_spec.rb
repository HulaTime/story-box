feature 'News' do
	before do
		sign_user_up
		visit news_path
	end

	scenario 'should have a list of media sources' do
		expect(page).to have_content 'Guardian'
		expect(page).to have_content 'Financial Times'
		expect(page).to have_content 'BBC Sport'
	end

end