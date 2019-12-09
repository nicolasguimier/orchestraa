class ProgramStep < ApplicationRecord
  belongs_to :concert
  belongs_to :musical_work, optional: true
  acts_as_list scope: :concert

  validates :kind, inclusion: { in: ['musical_work', 'intermission'] }
  validates :musical_work, presence: true, if: :musical_step?

  private

  def musical_step?
    kind == 'musical_work'
  end
end
