feature 'Reviews', :vcr do

  context 'User' do
    context 'signed in' do  
      before do
        sign_user_up
        make_article
      end
      
      scenario 'able to leave article reviews/comments' do
        expect(page).to have_css '#review_form'
        fill_in "review", with: "so so"
        select '3', from: 'rating'
        click_button 'Submit'
        expect(current_path).to eq articles_path
        expect(page).to have_content('so so')
        expect(page).to have_content('3')
      end
    end

    context 'signed out' do
      before do
        sign_user_up
        make_article
        click_link 'Sign out'
      end

      scenario 'not able to leave a review' do
        expect(page).not_to have_css '#review_form'       
      end
    end
  end
  
end