feature 'News' do
	before do
		sign_user_up
		visit news_path
	end

	scenario 'should have multiple media outlets' do
		expect(page).to have_content 'Guardian Financial Times BBC Sport'
	end

	xscenario 'outlets should display headlines' do
	end
end