class Event < ApplicationRecord

    #validations
    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :event_date
    validates_presence_of :event_time
end
