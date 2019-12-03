class MusicalWork < ApplicationRecord
  belongs_to :user
  has_many :program_steps

  validates :title, presence: true
end
