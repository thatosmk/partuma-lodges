class RsvpController < ApplicationController

    before_action :set_event

  def new
  end

  def create

  end

  def delete
  end

  def update
  end

  def show
  end


  private

  def set_event
      @event = Event.find(params[:event_id])
  end

  def event_params
      params.require(:event).permit(:account_id, :event_id)
  end
end
