class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :full_name, presence: true
  validates :email, presence: true, format: { with: Devise.email_regexp }
  validates :status, presence: true, inclusion: { in: ['pending', 'accepted', 'accepted'] }
  validates :sendingblue_email_id, presence: true
  validates :email_delivered, presence: true
  validates :email_read, presence: true
  validates :email_clicked, presence: true
  validates :email_error, presence: true
end
