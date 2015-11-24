class MapsController < ApplicationController

  def index
    @user = current_user
    @maps = @user.maps.order("id DESC")
  end

  def new
    @map = Map.new()
    respond_to do |format|
      format.html {render :"_new_map", layout: false}
      format.json
    end
  end

  def create
    @map = Map.new(map_params)
    p @map
    @map.user_id = current_user.id

    respond_to do |format|
      if @map.save
        # redirect_to user_map_path(map: @map, id: @map.id)
        # p "&" * 70
        # p @map
        # p "&" * 70
        format.html { render "show", layout: false, locals: {map: @map, user: @map.user_id} }
      end
    end
  end

  def show
    @map = Map.find(params[:id])
    p "&" * 70
    p @map.artist
    p "&" * 70
    @event = Songkick::Calendar.new(artist_name: @map.artist)
    @locations = @event.tour_locations
    @titles = @event.event_titles
    @dates = @event.event_dates
    @times = @event.event_times
    @links = @event.event_links
    @cities = @event.cities
    p @map.center_lat
    respond_to do |format|
      format.json {
        render json: {
          center_lat: @map.center_lat,
          center_lng: @map.center_lng,
          locations: @locations,
          artist: @map.artist,
          titles: @titles,
          dates: @dates,
          times: @times,
          links: @links,
          cities: @cities
        }}
      format.html
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @map = Map.find(params[:id])
    @map.destroy
    redirect_to user_maps_path(current_user)
  end

  private

  def map_params
    params.require(:map).permit(:center_lat, :center_lng, :artist, :user_id)
  end

end
