feature 'NavBar', :vcr do

	before do
		visit root_path
	end

	scenario 'should have a link to articles' do
		click_link 'Articles'
		expect(current_path).to eq articles_path
	end

	context 'User not signed in' do		
		scenario 'should have links to sign up and in' do
			expect(page).to have_link 'Sign up'
			expect(page).to have_link 'Sign in'
		end

		scenario 'Notes and Sign out don\'t show' do
			expect(page).not_to have_link 'Sign out'
			expect(page).not_to have_link 'Notes'
			expect(page).not_to have_link ' Preferences'
		end
 
		scenario 'home button redirects to landing page' do
			click_link 'Home'
			expect(current_path).to eq root_path
		end
	end

	context 'User signed in' do
		before do
			sign_user_up
		end

		scenario 'should have a Notes link' do
			click_link 'Notes'
			expect(current_path).to eq notes_path
		end

		scenario 'should have a link to sign out' do
			expect(page).to have_link 'Sign out'
		end

		scenario 'home button redirects to user homepage' do
			click_link 'Home'
			expect(current_path).to eq home_path
			expect(page).to have_content 'Bono'
		end

		scenario 'there is a link to news path' do
			click_link 'News'
			expect(current_path).to eq news_path
		end
	end
end