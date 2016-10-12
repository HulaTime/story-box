feature 'Articles', :vcr do

	context 'when user signed in' do
		before do
			sign_user_up
			make_article
			visit articles_path
		end

		scenario 'index should display first 3 lines of article body' do
			expect(page).to have_content 'Some useful info'
		end

		scenario 'can be created via a link' do
			make_article(body: 'No. 2')
			expect(page).to have_content 'No. 2'
		end

		xscenario 'can be viewed individually' do
			user = User.find_by(email: 'test@example.com')
			article = user.articles.first
			click_link 'An Article'
			expect(current_path).to eq "/articles/#{article.id}"
			expect(page).to have_content "An Article Some useful info\n\n\n\nend"
		end
	end

	context 'when user not signed in' do
		before do
			sign_user_up
			make_article
			click_link 'Sign out'
			visit articles_path
		end

		scenario 'cannot be created' do			
			expect(page).not_to have_link 'New Article'
		end

		scenario 'can view existing articles' do
			expect(page).to have_content 'Some useful info'
		end
	end
end