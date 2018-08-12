class Booking < ApplicationRecord


    # define associations
    belongs_to :room, dependent: :destroy
end
