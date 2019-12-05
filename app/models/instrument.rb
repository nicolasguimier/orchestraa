class Instrument < ApplicationRecord
  has_many :invitations, dependent: :destroy
  has_many :work_instruments, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ['Strings', 'Woodwinds', 'Brass', 'Percussions', 'Keyboards'] }
end
