describe User, type: :model do
	
	it { should have_many(:articles) }
	it { should have_many(:notes) }

end