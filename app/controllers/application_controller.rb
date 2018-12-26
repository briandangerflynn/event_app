class ApplicationController < ActionController::Base

  def recurring_method(event)
    @first_instance = EventInstance.create(event_id: event.id, start: event.start, end: event.end)
    if event.recurring == "Daily"
      daily(event, @first_instance)
    elsif event.recurring == "Weekly"
      weekly(event, @first_instance)
    elsif event.recurring == "Monthly"
      monthly(event, @first_instance)
    elsif event.recurring == "Quarterly"
      quarterly(event, @first_instance)
    end
  end

  def daily(event, instance)
    @new_instance = EventInstance.create(event_id: event.id, start: instance.start + 1.day, end: instance.end + 1.day)
    @next_instance = @new_instance.start + 1.day
    if @next_instance.strftime("%Y") == @new_instance.start.strftime("%Y")
      daily(event, @new_instance)
    end
  end

  def weekly(event, instance)
    @new_instance = EventInstance.create(event_id: event.id, start: instance.start + 1.week, end: instance.end + 1.week)
    @next_instance = @new_instance.start + 1.week
    if @next_instance.strftime("%Y") == @new_instance.start.strftime("%Y")
      weekly(event, @new_instance)
    end
  end

  def monthly(event, instance)
    @new_instance = EventInstance.create(event_id: event.id, start: instance.start + 1.month, end: instance.end + 1.month)
    @next_instance = @new_instance.start + 1.month
    if @next_instance.strftime("%Y") == @new_instance.start.strftime("%Y")
      monthly(event, @new_instance)
    end
  end

  def quarterly(event, instance)
    @new_instance = EventInstance.create(event_id: event.id, start: instance.start + 3.months, end: instance.end + 3.months)
    @next_instance = @new_instance.start + 3.months
    if @next_instance.strftime("%Y") == @new_instance.start.strftime("%Y")
      quarterly(event, @new_instance)
    end
  end

end
