class EventsController < ApplicationController

  def index
    @events = Event.order('start')
    @instances = EventInstance.order('start')
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      recurring_method(@event)
      redirect_to events_path
    else
      redirect_to new_event_path
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
      @event = Event.find_by(id: params[:id])
      @event.destroy
      redirect_to '/events'
  end

private

  def event_params
    params.require(:event).permit(:name, :description, :recurring, :reminder, :start, :end)
  end


end
