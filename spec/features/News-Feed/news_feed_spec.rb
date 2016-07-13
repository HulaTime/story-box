feature 'News Feed' do

  scenario 'displays feeds from multiple outlets' do
    visit '/news'
    expect(page).to have_content("Guardian")
    expect(page).to have_content("Daily Mail")
    expect(page).to have_content("Financial Times")
  end

end