class Account < ApplicationRecord

  # define associations
  belongs_to :user
  has_many   :bookings

  has_one_attached :avatar
end
