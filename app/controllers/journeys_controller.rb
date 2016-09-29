class JourneysController < ApplicationController
  before_action :authenticate_user!
  def index
    @journeys = Journey.all 
  end

  def new
  end

  def create
    @journey = Journey.create(
      name: params[:name],
      description: params[:description],
      dm_id: current_user.id 
    )
    flash[:success] = "With a step out the door"
    redirect_to "/journeys/#{@journey.id}"
  end

  def show
    @journey = Journey.find(params[:id])
  end
end
