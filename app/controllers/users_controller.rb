class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Registered!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = "Registered!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

 def destroy
  @user.destroy
  redirect_to root_path
 end

private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :id)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
