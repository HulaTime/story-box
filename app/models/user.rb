class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :articles
  has_many :notes
  has_one :preference

  def sort_notes_by_id
 		notes = self.notes
 		notes.sort_by{|note| note.id }
  end

end
