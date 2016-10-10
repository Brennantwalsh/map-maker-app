class TilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @tiles = Tile.paginate(:page => params[:page], :per_page => 28).order("path")
    sort_attribute = params[:sort]

    if sort_attribute
      @tiles = Tile.paginate(:page => params[:page], :per_page => 28).where("path ILIKE ?", "%#{sort_attribute}%")
    end  
  end

  def show
    @tile = Tile.find(params[:id])
  end
end
