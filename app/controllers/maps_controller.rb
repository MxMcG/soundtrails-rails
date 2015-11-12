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
    p "&" * 100
    p params
    p "&" * 100
    @map = Map.new(map_params)
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
    params.permit(:center_lat, :center_lng, :artist, :user_id)
  end

end
