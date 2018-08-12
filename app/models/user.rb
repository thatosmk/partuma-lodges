class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # associations
  has_one  :account, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :posts


  # associate avatars with the model
  has_one_attached :avatar, dependent: :destroy
end
