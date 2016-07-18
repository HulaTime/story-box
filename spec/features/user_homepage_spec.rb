feature 'Homepage' do

  context 'Signed in user' do
    before do
      sign_user_up
      visit '/home'
    end

    scenario 'signed up users have a homepage' do
      expect(page).to have_content("Bono")
    end

    scenario 'should have a link to users notes' do
      expect(page).to have_link('My Notes')
      click_link('My Notes')
      expect(current_path).to eq notes_path
    end

    scenario 'should have a link to users preferences' do
      expect(page).to have_link('Preferences')
      click_link('Preferences')
      expect(current_path).to eq preferences_path
    end

    scenario 'should have a link to users news feed' do
      expect(page).to have_link('Latest Updates')
    end

    scenario 'should have a sign out option' do
      expect(page).to have_link('Sign out')
    end
  end

  scenario 'should divert to landing page if user not signed in' do
    visit 'home'
    expect(current_path).to eq '/'
  end

end