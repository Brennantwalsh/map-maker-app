class TilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @tiles = Tile.all
  end

  def show
    @tile = Tile.find(params[:id])
  end
end
