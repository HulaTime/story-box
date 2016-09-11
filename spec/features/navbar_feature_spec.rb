feature 'NavBar' do
	
	context 'User not signed in' do
		before do
			visit '/'
		end
		
		scenario 'should have links to sign up and in' do
			expect(page).to have_link 'Sign up'
			expect(page).to have_link 'Sign in'
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

    scenario 'should have a link to set Preferences' do
      click_link 'Preferences'
      expect(current_path).to eq(preferences_path)
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