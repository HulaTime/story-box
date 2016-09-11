feature 'External request' do
  scenario 'makes a GitHub query to check webmock' do
    uri = URI('https://api.github.com/repos/thoughtbot/factory_girl/contributors')

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end