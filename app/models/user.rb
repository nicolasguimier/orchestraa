class User < ApplicationRecord
  has_many :orchestra_compositions, dependent: :destroy
  has_many :concerts, dependent: :destroy
  has_many :musical_works, dependent: :destroy
  has_many :invitations, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
