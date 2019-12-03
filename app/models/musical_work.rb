class MusicalWork < ApplicationRecord
  belongs_to :user
  has_many :program_steps
  has_many :work_instruments

  validates :title, presence: true
end
