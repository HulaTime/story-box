class Note < ApplicationRecord
  validates :title, :note, presence: true
end
