feature 'View Notes' do

  context 'notes have been added' do
    before do
      sign_user_up
      make_note
      make_note(title: 'note2', note:'unimportant notes' )
    end

    scenario 'note titles are links to note' do
      visit '/notes'
      click_link 'A note'
      expect(page).to have_content('Important notes')
    end
  end

end