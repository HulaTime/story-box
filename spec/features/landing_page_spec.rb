feature 'Landing Page' do

  scenario 'should have a link to set preferences' do
    visit '/'
    expect(page).to have_content('Story Box')
    expect(page).to have_link('Preferences')
  end

end