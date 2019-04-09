class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all.order(date: :desc)

    @latest_events = Event.all.order(date: :desc).limit(5)
  end
end
