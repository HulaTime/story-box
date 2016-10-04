describe Review, type: :model do

	it { should belong_to :user }
	it { should belong_to :article }

end