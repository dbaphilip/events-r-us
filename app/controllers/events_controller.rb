class EventsController < ApplicationController
  def index
    @events = Event.upcoming
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    e = Event.create(event_params)
    redirect_to e
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    e = Event.find(params[:id])
    e.update(event_params) 
    redirect_to e
  end

  def destroy
    e = Event.find(params[:id])
    e.destroy
    redirect_to events_url, status: :see_other
  end

private

  def event_params
    params.require(:event).permit(:name, :description, :location, :starts_at, :price)
  end
end
