class PlacementsController < ApplicationController
  layout "application_variant.html.erb"
  def index
    @map = Map.find(params[:id])
    @participations = Participation.where(journey_id: @map.journey_id).find_by(user_id: current_user.id)
    if @participations
      @visibility = Visibility.where(participation_id: @participations.id)
    end
    @placements = Placement.all.where(map_id: @map.id).order(:row, :id)
  end

  def edit
    @images = Tile.all
    @placement = Placement.find(params[:id])
  end

  def update
    @placement = Placement.find(params[:id])
    @placement.update(tile_id: params[:tile_id])
    flash[:success] = "Tile updated"
    redirect_to "/maps/#{@placement.map_id}"
  end
end
