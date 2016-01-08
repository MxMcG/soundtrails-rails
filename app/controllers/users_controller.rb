class UsersController < ApplicationController

  def index
    @user = current_user
    @maps = Map.all
  end

  def show
    @user = User.find(params[:id])
  end

end
