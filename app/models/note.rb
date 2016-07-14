class Note < ApplicationRecord
  validates :title, :note, presence: true

  belongs_to :user

  def build_with_user(params, current_user)
    note = create(params)
    note.user_id = current_user.id
  end

end
