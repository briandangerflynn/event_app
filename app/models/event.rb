class Event < ApplicationRecord
  has_many :attendees
  has_many :event_instances
end
