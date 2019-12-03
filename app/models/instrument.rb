class Instrument < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ['Strings', 'Woodwind', 'Brass', 'Percussion'] }
end
