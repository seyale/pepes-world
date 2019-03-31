class EventsController < ApplicationController

  before_action :set_event, only: [:show]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.new
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :place, :photo, :description, :kid_id, :user_id)
  end
end
