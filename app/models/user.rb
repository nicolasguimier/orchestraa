class User < ApplicationRecord
  has_many :orchestra_compositions
  has_many :concerts
  has_many :musical_works

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
