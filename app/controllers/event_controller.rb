class EventController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create, :destroy, :edit, :new, :update]
  def index
    @events = Event.all
  end

  def show
  @event = Event.find(params[:id])
  end

  def new

  end

  def create
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts params
    puts start_date = (params[:start_date]+" "+params[:hour_date]+":00")
    puts end_date = (params[:end_date]+" "+params[:hour_end]+":00")
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    @event = Event.create(start_date: start_date, end_date: end_date, title: params[:title], description: params[:description], location: params[:location], price: params[:price], administrator: current_user )
    redirect_to event_path(@event.id)
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
