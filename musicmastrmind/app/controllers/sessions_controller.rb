class SessionsController < ApplicationController
  def new
    @user = User.new
    @username_email = nil
    render :new
  end

  def create
    @user = User.find_by_credentials(
      user_params[:username_email],
      user_params[:password]
    )

    if @user
      log_in(@user)
      redirect_to root_url
    else
      flash.now[:errors] = ["Invalid log-in credentials"]
      @user = User.new()
      @username_email = user_params[:username_email]
      render :new
    end
  end

  def destroy
    log_out
    redirect_to new_session_url
  end

  private
  def user_params
    params.require(:user).permit(:username_email, :password)
  end
end
