class OrchestraComposition < ApplicationRecord
  belongs_to :user

  validates :composition, presence: true
end
