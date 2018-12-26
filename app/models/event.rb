class Event < ApplicationRecord
  has_many :attendees, :dependent => :destroy
  has_many :event_instances, :dependent => :destroy

  validates :name, :start, :end, :recurring, presence: true


end
