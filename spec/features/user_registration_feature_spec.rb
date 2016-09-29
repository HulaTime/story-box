feature "User can sign in and out", :vcr do
  context "user not signed in and on the homepage" do
    scenario "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    scenario "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end

    scenario 'username required for sign up' do
      visit '/'
      click_link 'Sign up'
      fill_in('Email', with: 'email@place.com')
      fill_in('Password', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
      expect(page).to have_content("Username can't be blank")
    end
  end

  context "user signed in on the homepage" do
    before do
      visit('/')
      sign_user_up
    end

    scenario "should see 'sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    scenario "should not see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end
end