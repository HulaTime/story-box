feature 'Notes' do
	
	context 'when user signed in' do
		before do
			sign_user_up
			make_note
			visit notes_path
		end

		scenario 'should display note' do
			expect(page).to have_content 'Important notes'
		end

		scenario 'can be created via a link' do
			make_note(body: 'No. 2')
			expect(page).to have_content 'No. 2'
		end
	end

	context 'when user not signed in' do
		scenario 'cannot be created' do
			expect(page).not_to have_link 'New Note'
		end
	end

end