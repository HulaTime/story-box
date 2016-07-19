feature 'Create Articles' do

  before do
    sign_user_up
    visit '/articles'
  end

  scenario 'User can create an article' do
    click_link 'Create Article'
    fill_in('Save as:', with: 'An Article')
    fill_in('Article', with: 'important stuffs')
    click_button('Save')
    expect(Article.count).to eq 1
  end

end