feature 'Reviews', :vcr do
	before do
		sign_user_up
		make_article
	end
	
  scenario 'allows users to leave article reviews/comments' do
    fill_in "comments", with: "so so"
    select '3', from: 'rating'
    click_button 'Submit'
		expect(current_path).to eq articles_path
    expect(page).to have_content('so so')
    expect(page).to have_content('3')
  end

end