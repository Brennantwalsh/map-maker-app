class PlacementsController < ApplicationController
  def create
    @placement = Placement.create(map_id: params[:map_id],
                                 tile_id: params[:tile_id],
                                 row: params[:row],
                                 column: params[:column])

    flash[:success] = "Tile added"
    redirect_to "/maps/#{@placement.map_id}"
  end

  def edit
    @placement = Placement.find(params[:id])
  end

  def update
    @placement = Placement.find(params[:id])
    @placement.update(map_id: params[:map_id],
                      tile_id: params[:tile_id],
                      row: params[:row],
                      column: params[:column])
    flash[:success] = "Tile updated"
    redirect_to "/maps/#{@placement.map_id}"
  end
end
