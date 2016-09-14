feature 'Articles' do
	before do
		article = create(:article)
		visit articles_path
	end

	scenario 'should be displayed on index page' do
		expect(page).to have_content 'An Article Random Text'
	end

	context 'User signed in' do

	end

	context 'User not signed in' do

	end
end