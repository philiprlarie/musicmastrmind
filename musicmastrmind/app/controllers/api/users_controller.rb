class Api::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user
      render :show
    else
      render json: ["So such user"], status: 404
    end
  end
end
