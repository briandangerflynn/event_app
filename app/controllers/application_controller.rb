class ApplicationController < ActionController::Base
  def recurring_method(event)
    if event.recurring == "Does Not Repeat"
      EventInstance.create(event_id: event.id, start: event.start, end: event.end)
    elsif event.recurring == "Quarterly"
      EventInstance.create(event_id: event.id, start: event.start, end: event.end)
      EventInstance.create(event_id: event.id, start: event.start + 90.days, end: event.end + 90.days)
    end
  end
end
