class SessionsController < ApplicationController

  def new
    @user = User.new

  end

  def create
    user = User.find_by(email: params[:sessions][:email])
    p params
    p user
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      p "&" * 80
      p user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

end
