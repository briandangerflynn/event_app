class AttendeesController < ApplicationController

  def index

  end

  def show

  end

  def create
    @attendee = Attendee.new(attendee_params)
    if @attendee.save
      redirect_to events_path
    end
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

  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :email, :event_id)
  end


end
