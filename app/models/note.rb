class Note < ApplicationRecord
  validates :title, :note, presence: true

  belongs_to :user

end
