feature 'Landing Page', :vcr do
	
	context 'signed in' do
		before do
			sign_user_up
		end

		scenario 'should redirect to users homepage' do
			expect(current_path).to eq home_path
		end
	end

	context 'Signed out' do
		before do
			visit root_path
		end

		scenario 'should redirect to news index' do
			expect(current_path).to eq news_path
		end
	end

end