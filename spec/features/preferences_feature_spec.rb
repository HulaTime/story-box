feature 'Preferences' do
	
	context 'signed in' do
		before do
			sign_user_up
		end

		scenario 'Preferences link directs to correct path' do
			visit root_path
			click_link 'Preferences'
			expect(current_path).to eq preferences_path
		end
	end

	context 'signed out' do
		scenario 'Preferences path directs to landing page' do
			visit preferences_path
			expect(current_path).to eq root_path
		end
	end

end