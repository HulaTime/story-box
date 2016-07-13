feature 'Landing Page' do

  context 'Preferences' do
    scenario 'should have a link to set preferences' do
      sign_user_up
      expect(page).to have_content('Story Box')
      expect(page).to have_link('Preferences')
    end

    scenario 'link redirects to correct path' do
      sign_user_up
      click_link('Preferences')
      expect(current_path).to eq(preferences_path)
    end

    scenario 'link is not visible unless signed in' do
      visit '/'
      expect(page).not_to have_link('Preferences')
    end
  end

  scenario 'user can redirect to a news feed' do
    visit '/'
    click_link 'News'
    expect(current_path).to eq news_path
  end


end