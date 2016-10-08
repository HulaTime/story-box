feature 'News', :vcr do

	before do
		sign_user_up
		visit news_path
	end

	scenario 'should have a list of media sources' do
		expect(page).to have_content 'Guardian'
		expect(page).to have_content 'Financial Times'
		expect(page).to have_content 'BBC Sport'
	end

	scenario 'each source title is a link to the source' do
		click_link 'ABC News (AUS)'
		url = URI.parse(current_url).to_s 
		expect(url).to eq "http://www.abc.net.au/news"
	end

	xscenario 'each source should display latest headlines' do
		expect(page).to have_content ''
	end

	xscenario "need to iterate through li in element to find images 'each source should have a picture'" do
		news_sources = page.all(:css, '.news_title')
	end

end