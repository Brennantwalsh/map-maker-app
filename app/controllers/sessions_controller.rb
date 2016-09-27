class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authentication(params[:password])
      session[:user.id] = user.id
      flash[:success] = 'Let your journey begin!'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Rest assured. Your journey will be waiting for you.'
    redirect_to '/login'
  end
end
