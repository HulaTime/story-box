describe User, type: :model do
	
	subject(:user) {described_class.new}
	let(:note1) { double :note1, id: 1, body: 'xyz' }
	let(:note2) { double :note2, id: 3, body: 'abc' }
	let(:note3) { double :note3, id: 5, body: 'sdfsaf' }

	it { should have_many(:articles) }
	it { should have_many(:notes) }

	it 'should have a method to sort notes' do
		allow(user).to receive(:notes) { [note1, note3, note2] }
		expect(user.sort_notes_by_id).to eq [note1, note2, note3]
	end

end
