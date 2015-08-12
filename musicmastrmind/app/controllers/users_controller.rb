class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  # this is just for developement, remove when done!
  def show
    @user = User.find(params[:id])
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:password, :username, :email)
  end
end
