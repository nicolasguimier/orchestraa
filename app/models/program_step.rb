class ProgramStep < ApplicationRecord
  belongs_to :concert
  belongs_to :musical_work

  validates :kind, inclusion: { in: ['musical_work', 'intermission'] }
end
