class Rsvp < ApplicationRecord

    belongs_to :event, dependent: :destroy
end
