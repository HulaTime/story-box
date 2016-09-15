feature 'Articles' do
	before do
		article = create(:article)
		visit articles_path
	end

	scenario 'should be displayed on index page' do
		expect(page).to have_content 'An Article Random Text'
	end

	context 'when user signed in' do
		scenario 'can be created via a link' do
			sign_user_up
			make_article
			expect(page).to have_content 'An Article Some useful info'
		end
	end

	context 'when user not signed in' do
		scenario 'cannot be created' do
			expect(page).not_to have_link 'New Article'
			create(:article, title: 'Article 2')
			expect(Article.count).to eq 0
		end
	end
end