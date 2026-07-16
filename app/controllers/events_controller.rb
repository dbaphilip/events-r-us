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
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: "Event created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: "Event updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    e = Event.find(params[:id])
    e.destroy
    redirect_to events_url, status: :see_other
  end

private

  def event_params
    params.require(:event).permit(:name, :description, :location, :image, :capacity, :starts_at, :price)
  end
end
