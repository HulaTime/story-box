def sign_user_up(email: 'test@example.com', username:'Bono')
  visit('/')
  click_link('Sign up')
  fill_in('Username', with: username)
  fill_in('Email', with: email)
  fill_in('Password', with: 'testtest')
  fill_in('Password confirmation', with: 'testtest')
  click_button('Sign up')
end

def make_note(body: 'Important notes')
  visit '/notes'
  click_link 'New Note'
  fill_in('note_body', with: body)
  click_button 'Create Note'
end

def make_article(title: 'An Article', body: "Some useful info\n\nend")
  visit '/articles'
  click_link 'New Article'
  fill_in('article_title', with: title)
  fill_in('article_body', with: body)
  click_button 'Save'
end