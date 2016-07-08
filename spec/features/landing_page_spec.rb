feature 'Landing Page' do

  scenario 'should have a link to set preferences' do
    visit '/'
    expect(page).to have_content('Story Box')
    expect(page).to have_link('Preferences')
  end

  scenario 'clicking preferences link redirects to correct path' do
    visit '/'
    click_link('Preferences')
    expect(current_path).to eq(preferences_path)
  end

end