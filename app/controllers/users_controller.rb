class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username],
                     email: params[:email],
                     password: params[:password],
                     password_confirmation: params[:password_confirmation],
                     avatar: params[:avatar])
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'Created User'
      redirect_to "/users/#{@user.id}"
    else
      flash[:warning] = 'Incorrect username or password'
      render 'new.html.erb'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(avatar: params[:avatar])
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
  end
end
