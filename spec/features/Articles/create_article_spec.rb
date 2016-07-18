feature 'Create Articles' do

  before do
    sign_user_up
    visit '/articles'
  end

  scenario 'User can create an article' do
    click_link 'Create Article'
    fill_in 'create a table here'
  end

end