describe Article, type: :model do
  
  it { should belong_to :user }
  it { should have_many :reviews }

end