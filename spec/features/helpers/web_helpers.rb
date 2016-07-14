def sign_user_up(email: 'test@example.com')
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: email)
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def make_note
  click_link 'Make a note'
  fill_in('Title', with: 'A note')
  fill_in('Note', with: 'Important notes')
  click_button 'Create Note'
end