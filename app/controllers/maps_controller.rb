class MapsController < ApplicationController

  def index
    @user = current_user
    @maps = @user.maps.order("id DESC")
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

    respond_to do |format|
      if @map.save
        p "&" * 70
        p @map
        p "&" * 70
        format.html { render partial: "new_map_link", locals: {map: @map, user: @map.user_id} }
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
