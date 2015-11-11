class MapsController < ApplicationController

  def index
    @user = current_user
    @maps = @user.maps
  end

  def new
    @map = Map.new()
    respond_to do |format|
      format.html {render :"_new_map", layout: false}
      format.json {render json: @map}
    end
  end

  def create
    @map = Map.new(map_params)
    @map.user_id = current_user.id
    p "&" * 100
    p @map
    p "&" * 100

    if @map.save
      redirect_to user_map_path({user_id: current_user.id, id: @map.id})
    else
      redirect_to user_maps_path
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
