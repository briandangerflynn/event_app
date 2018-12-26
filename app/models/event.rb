class Event < ApplicationRecord
  has_many :attendees
  has_many :event_instances

  validates :name, :start, :end, :recurring, presence: true

end
