feature 'Create Notes' do

  context 'notes have been added' do
    before do
      sign_user_up
      make_note
    end

    scenario 'display notes titles' do
      visit '/notes'
      expect(page).to have_content('A note')
      expect(page).not_to have_content('No notes')
    end

    scenario 'user can create a note when signed in' do
      expect(current_path).to eq '/notes'
      expect(page).to have_content 'A note'
    end
  end

  context 'notes have not been added' do
    scenario 'informative message displayed' do
      sign_user_up
      visit '/notes'
      expect(page).to have_content('No notes added')
      expect(page).not_to have_content('Note1')
    end
  end

end