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

  def attendees_params
    params.require(:attendees).permit(:first_name, :last_name, :email)
  end


end
