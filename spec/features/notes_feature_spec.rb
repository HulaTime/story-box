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

		scenario 'can be created on same page' do
			make_note(body: 'No. 2')
			expect(page).to have_content 'No. 2'
		end

		scenario 'can be deleted' do
			page.first(".delete-note").click
			expect(page).not_to have_content ' Important notes'
		end

		context 'Data Binding' do
			scenario 'editing notes updates page and database' do
				expect(page).to have_content 'Important notes'
				edit_note
				expect(current_path).to eq notes_path
				expect(page).to have_content 'This is edited'
			end
		end
	end

end