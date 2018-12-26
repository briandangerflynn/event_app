class EventsController < ApplicationController

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

  def events_params
    params.require(:events).permit(:name, :description, :recurring, :reminder)
  end


end
