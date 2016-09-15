describe Article, type: :model do
  
  it 'is not valid without a title' do
    article = Article.new(body: "kfc")
    expect(article).not_to be_valid
  end

   it 'is not valid without a title with at least 3 characters' do
    article = Article.new(body: "fc")
    expect(article).not_to be_valid
  end

end