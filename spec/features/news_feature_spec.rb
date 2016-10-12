feature 'News', :vcr do

	before do
		sign_user_up
		visit news_path
	end

	scenario 'should have a list of media sources' do
		expect(page).to have_css("img[alt*='Guardian']")
		expect(page).to have_css("img[alt*='Financial Times']")
		expect(page).to have_css("img[alt*='BBC Sport']")
	end

	scenario 'each source logo is a link to the source' do
		click_link 'ABC News (AUS)'
		url = URI.parse(current_url).to_s 
		expect(url).to eq "http://www.abc.net.au/news"
	end

	scenario 'each source should have a description' do
		news_sources = page.all(:css, '.source-info')
		news_sources.each do |source|
			paragraph = source.find(:css, 'p')
			expect(paragraph.text).not_to eq ''
		end
	end

	scenario "each source should have its logo as an image" do
		news_sources = page.all(:css, '.source-info')
		news_sources.each do |source|
			expect(source).to have_css("img")
		end
	end

	xscenario 'add iframes for the news sources' do
	end

end