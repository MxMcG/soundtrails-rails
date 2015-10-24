class MapsController < ApplicationController

  def index
    @maps = Map.all
  end

  def new
    @user = User.find(session[:user_id])

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
