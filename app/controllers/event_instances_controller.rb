class EventInstancesController < ApplicationController

  def index
    @events = Event.order('start')

    if params[:start]
      @start = DateTime.parse(params[:start])
      @week_later = DateTime.parse(params[:start]) + 7.days
      @instances = EventInstance.where("start >= ? AND start <= ?", @start, @week_later).order("start")
    else
      @instances = EventInstance.order('start')
    end

  end

  def show
    @instance = EventInstance.find(params[:id])
    @event = Event.find(params[:event_id])
  end

  def create

  end

  def new

  end

  def update
    @instance = EventInstance.find_by(id: params[:id])
    @instance.update_attributes(event_instance_params)
    redirect_to "/events"
  end

  def edit
    @instance = EventInstance.find_by(id: params[:id])
    @event = Event.find(params[:event_id])
  end

  def destroy
      @instance = EventInstance.find_by(id: params[:id])
      @instance.destroy
      redirect_to '/events'
  end

private

  def event_instance_params
    params.require(:event_instance).permit(:start, :end, :event_id)
  end


end
