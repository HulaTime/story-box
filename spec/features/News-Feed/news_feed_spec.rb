feature 'News Feed' do

  context 'Landing Page' do
    scenario 'makes a call to the Guardian API' do
      visit '/'
      expect(page).to have_content("Guardian")
      expect(page).to have_content('latest news updates')
    end
  end

end