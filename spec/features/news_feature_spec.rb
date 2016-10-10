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
		news_sources = page.all(:css, '.news-logo')
		expect(page).to have_content ''
	end

	xscenario "each source should have its logo as an image" do
		news_sources = page.all(:css, '.source-info')
		news_sources.each do |source|
			url = source.find('a')['href']
			expect(source).to have_xpath("//img[@src=\"/public/images/#{image}\"]")
		end
	end

end