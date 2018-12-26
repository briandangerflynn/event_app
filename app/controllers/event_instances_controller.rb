class EventInstancesController < ApplicationController

  def index

  end

  def show

  end

  def create

  end

  def new

  end

  def update

  end

  def edit

  end

  def destroy

  end

private

  def event_instance_params
    params.require(:event_instance).permit(:start, :end, :event_id)
  end


end
