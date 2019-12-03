class Instrument < ApplicationRecord
  has_many :invitations
  has_many :work_instruments
  has_many :invitations

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ['Strings', 'Woodwind', 'Brass', 'Percussion'] }
end
