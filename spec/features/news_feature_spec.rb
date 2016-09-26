feature 'News' do
	before do
		sign_user_up
	end

	scenario 'should have multiple media outlets', :vcr do
		visit news_path
		expect(page).to have_content 'Guardian'
		expect(page).to have_content 'Financial Times'
		expect(page).to have_content 'BBC Sport'
	end

	scenario 'outlets should display headlines', :vcr do
		visit news_path
		expect(page).to have_content 'GuardianHeadline FTHeadline BBCHeadline'
	end
end