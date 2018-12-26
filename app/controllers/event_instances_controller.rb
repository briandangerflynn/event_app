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

  def event_instances_params
    params.require(:event_instances).permit(:start, :end, :event_id)
  end


end
