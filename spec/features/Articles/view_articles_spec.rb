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

  context 'Articles added' do
    before do
      sign_user_up
      make_article
    end

    scenario 'titles of articles displyed on page' do
      visit articles_path
      expect(page).not_to have_content 'No Articles'
      expect(page).to have_content 'An Article'
    end
  end

end