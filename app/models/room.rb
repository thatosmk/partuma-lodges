class Room < ApplicationRecord


    # define associations
    has_many :bookings

    # associate model with picture of the room(many)
    has_many_attached :images

end
