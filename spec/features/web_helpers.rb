def sign_user_up(email: 'test@example.com', username:'Bono')
  visit('/')
  click_link('Sign up')
  fill_in('Username', with: username)
  fill_in('Email', with: email)
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def make_note(title: 'A note', note: 'Important notes')
  visit '/notes'
  click_link 'Make a note'
  fill_in('Title', with: title)
  fill_in('Note', with: note)
  click_button 'Create Note'
end

def make_article(title: 'An Article', body: 'Some useful info')
  visit '/articles'
  click_link 'New Article'
  fill_in('article_title', with: title)
  fill_in('article_body', with: body)
  click_button 'Save'
end