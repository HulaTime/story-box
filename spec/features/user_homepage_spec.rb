feature 'Homepage' do

  before do
    sign_user_up
  end

  scenario 'signed up users have a homepage' do
    expect(page).to have_content("Welcome")
  end

end