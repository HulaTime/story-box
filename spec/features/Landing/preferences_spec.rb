feature 'Preferences' do

  scenario 'should have a list of News Outlets' do
    visit '/preferences'
    expect(page).to have_content('Please select your prefered news sources')
    guardian = find('#guardian')
    dm = find('#daily_mail')
    ft = find('#financial_times')
    expect(guardian).not_to be_checked
    expect(dm).not_to be_checked
    expect(ft).not_to be_checked
  end

end