class MapsController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
    @map = Map.create(
      name: params[:name],
      description: params[:description],
      row_number: params[:row_number],
      column_number: params[:column_number],
      creator_id: current_user.id,
      journey_id: params[:journey_id]
    )
    redirect_to "/maps/#{@map.id}"
  end

  def show
    @map = Map.find(params[:id])
  end

  def edit
  end

  def update
    @map = Map.find(params[:id])
    @map.update(
      name: params[:name],
      description: params[:description],
      row_number: params[:row_number],
      column_number: params[:column_number],
      creator_id: current_user.id,
      journey_id: params[:journey_id]
    )

    flash[:success] = 'Ahh so that is the right way to go'
    redirect_to "/maps/#{@map.id}"
  end

  def destroy
    @map = Map.find(params[:id])
    @map.destroy

    flash[:success] = 'Sad. Already looted'
    redirect_to '/maps/new'
  end
end
