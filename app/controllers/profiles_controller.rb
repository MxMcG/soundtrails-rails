class ProfilesController < ApplicationController

  def index
    @user = current_user
    @maps = @user.maps.order("id DESC")
  end

end
