class Concert < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :program_steps, dependent: :destroy

  validates :name, presence: true

  validates :start_at, presence: { message: 'Must be a valid date' }
  validates :end_at, presence: { message: 'Must be a valid date' }
  validate :start_must_be_before_end

  private

  def start_must_be_before_end
    errors.add(:start_at, "must be before end time") unless
        start_at < end_at
  end
end
