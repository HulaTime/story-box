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

		xcontext 'Data Binding' do
			scenario 'editing notes updates page and database' do
				expect(page).to have_content 'Important notes'
				make_note(body: 'ploppers')
				expect(current_path).to eq notes_path
				expect(page).to have_content 'ploppers'
			end
		end
	end

end