xfeature 'Create Articles' do

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

  scenario 'User can\'t create an article if not signed in' do
    click_link 'Sign out'
    visit '/articles'
    expect(current_path).to eq root_path
    Article.create(title:'hello', article:'fail')
    expect(Article.count).to eq 0
  end

end