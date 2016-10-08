feature 'Landing Page', :vcr do
	
	context 'signed in' do
		before do
			sign_user_up
		end

		scenario 'should redirect to users homepage' do
			expect(current_path).to eq home_path
		end
	end

	context 'signed out' do
		before do
			visit root_path
		end

		xscenario 'should render content from \'\news\index\'' do
			expect(page).to have_content 'Guardian'
			expect(page).to have_content 'Financial Times'
			expect(page).to have_content 'BBC Sport'
		end
	end

end