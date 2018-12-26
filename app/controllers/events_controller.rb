class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      EventInstance.create(event_id: @event.id, start: @event.start, end: @event.end)
      redirect_to events_path
    end
  end

  def new
    @event = Event.new
  end

  def update

  end

  def edit

  end

  def destroy

  end

private

  def event_params
    params.require(:event).permit(:name, :description, :recurring, :reminder, :start, :end)
  end


end
