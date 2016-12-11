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

	# xscenario 'Clicking a news link opens it\'s source in iframe' do
	# 	expect(page.all(:css, 'iframe')).to be_empty
	# 	images = page.all(:css, '.news-images')
	# 	images.first.click
	# 	find("#iframe-1")
	# end

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
end