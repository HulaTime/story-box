feature 'News Feed' do

  context 'Landing Page' do
    scenario 'displays latest updates regardless of preferences' do
      visit '/'
      expect(page).to have_content("Guardian")
      expect(page).to have_content('latest news updates')
    end
  end

  xscenario 'displays feeds from multiple outlets' do
    visit '/news'
    expect(page).to have_content("Guardian")
    expect(page).to have_content("Daily Mail")
    expect(page).to have_content("Financial Times")
  end



end