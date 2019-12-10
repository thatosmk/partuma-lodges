class Event < ApplicationRecord

    # associate model with picture of the event(many)
    has_many_attached :images
    has_many_attached :rsvps

    #validations
    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :event_date
    validates_presence_of :event_time
end
