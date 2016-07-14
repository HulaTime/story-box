feature 'Create Note' do

  context 'notes have been added' do
    before do
      Note.create(title: 'Note1')
    end

    scenario 'display notes' do
      visit '/notes'
      expect(page).to have_content('Note1')
      expect(page).not_to have_content('No notes')
    end
  end

  context 'notes have not been added' do
    scenario 'informative message displayed' do
      visit '/notes'
      expect(page).to have_content('No notes added')
      expect(page).not_to have_content('Note1')
    end
  end

  scenario 'user can create a note when signed in' do
    sign_user_up
    visit '/notes'
    make_note
    expect(current_path).to eq '/notes'
    expect(page).to have_content 'A note'
  end

end