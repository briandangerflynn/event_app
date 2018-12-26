class AttendeesController < ApplicationController

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

  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :email)
  end


end
