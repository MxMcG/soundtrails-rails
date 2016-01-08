class MapsController < ApplicationController

  def index
    @user = current_user

  end

  def new
    @map = Map.new()
    @user = current_user
  end

  def create
    @map = Map.new(map_params)
    p @map
    @map.user_id = current_user.id
    respond_to do |format|
      if @map.save
        @event = Songkick::Calendar.new(artist_name: @map.artist)
        format.json {
          render :json, {
            locations: @event.tour_locations,
            artist: @map.artist,
            titles: @event.event_titles,
            dates: @event.event_dates,
            times: @event.event_times,
            links: @event.event_links,
            cities: @event.cities
          }
        }
      end
    end
  end

  def show
    @map = Map.find(params[:id])
    p "&" * 70
    p @map.artist
    p "&" * 70

    p @map.center_lat

    respond_to do |format|
      format.json {
        render json: {
          center_lat: @map.center_lat,
          center_lng: @map.center_lng,
          locations: @event.tour_locations,
          artist: @map.artist,
          titles: @event.event_titles,
          dates: @event.event_dates,
          times: @event.event_times,
          links: @event.event_links,
          cities: @event.cities
        }
      }
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
