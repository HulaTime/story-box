RSpec.describe Note, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:note) }
  it { should belong_to(:user)}
end