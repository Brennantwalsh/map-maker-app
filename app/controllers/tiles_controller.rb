class TilesController < ApplicationController
  def index
    @tiles = Tile.all
  end

  def show
    @tile = Tile.find(params[:id])
  end
end
