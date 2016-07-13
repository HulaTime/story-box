feature 'Create Note' do

  scenario 'user can create a note when signed in' do
    sign_user_up
    visit '/notes'
  end

end