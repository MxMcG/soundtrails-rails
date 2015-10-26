class MapsController < ApplicationController

  def index
    @user = current_user
    @maps = @user.maps
  end

  def new
    @map = Map.new()

  end

  def create
    @map = Map.new(map_params)
    @map.user_id = current_user.id
    if @map.save
      redirect_to user_maps_path
    else
      render :new
    end
  end

  def show
    @map = Map.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def map_params
    params.require(:map).permit(:artist)
  end

end
