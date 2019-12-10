class Booking < ApplicationRecord


    # define associations
    belongs_to :room, dependent: :destroy
    belongs_to :user, dependent: :destroy
end
