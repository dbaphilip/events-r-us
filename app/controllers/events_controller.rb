class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    e = Event.find(params[:id])
    e.update(event_params) 
    redirect_to e
  end

private

  def event_params
    params.require(:event).permit(:name, :description, :location, :starts_at, :price)
  end
end
