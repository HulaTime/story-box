feature 'Articles' do

	context 'when user signed in' do
		before do
			sign_user_up
			make_article
			visit articles_path
		end

		scenario 'should be displayed on index page' do
			expect(page).to have_content 'An Article Some useful info'
		end

		scenario 'can be created via a link' do
			make_article(title: 'No. 2')
			expect(page).to have_content 'No. 2 Some useful info'
		end
	end

	context 'when user not signed in' do
		scenario 'cannot be created' do
			expect(page).not_to have_link 'New Article'
		end
	end
end