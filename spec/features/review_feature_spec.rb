feature 'Reviews', :vcr do
	before do
		sign_user_up
		make_article
	end
	
	xscenario 'can be left by a user on someone else\'s article' do
		
	end
  
  scenario 'allows users to leave article reviews/comments' do
    fill_in "review-box", with: "so so"
    select '3', from: 'review-rating'
    click_button 'Submit'
		expect(current_path).to eq articles_path
    expect(page).to have_content('so so')
  end

end