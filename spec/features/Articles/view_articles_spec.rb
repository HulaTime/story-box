feature 'Viewing Articles' do

  context 'No Articles added' do
    scenario 'informative message displayed' do
      sign_user_up
      visit articles_path
      expect(page).to have_content 'No Articles'
    end
  end

  context 'Not signed in' do
    scenario 'user redirected to landing page' do
      visit articles_path
      expect(current_path).to eq root_path
    end
  end

end