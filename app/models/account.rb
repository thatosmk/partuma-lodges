class Account < ApplicationRecord

  # define associations
  belongs_to :user
  has_many   :bookings
end
