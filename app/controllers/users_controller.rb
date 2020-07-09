class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]
  # before_action :correct_user only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      flash[:message] = "Welcome #{@user.username}!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def correct_user
    @user = User.find(params[:id])
    if @user.logged_in
      # you wouldnt get rejected to view index page
    else
      flash[:danger] = "You do not have access to that page"
      redirect_to user_path(@user)
    end
  end
end
