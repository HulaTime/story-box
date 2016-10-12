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
  fill_in('note_body', with: body)
  click_button 'Create Note'
end

def make_article(body: "Some useful info\n\nend")
  visit '/articles'
  click_link 'New Article'
  fill_in('article_body', with: body)
  click_button 'save-button'
end

def edit_note(body: 'This is edited')
  visit '/notes'
  text_area = first(:css, 'div.notes').value
  fill_in(text_area, with: body)
end