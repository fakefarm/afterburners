class UsersController < ApplicationController
  before_action :find_user, except: [:index, :new, :create]
  before_action :require_user, except: [:new, :create, :show, :index]
  before_action :authorized_user, only: [:edit, :destroy]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @comments = Comment.where(user_id: params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Registered!"
      redirect_to new_mix_path
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
  session[:user_id] = nil
  flash[:notice] = "Account Deleted!"
  redirect_to root_path
 end

private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :id)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def authorized_user
    unless current_user.id == params[:id].to_i
      flash[:error] = 'Not authorized.'
      redirect_to users_path
    end
  end
end
