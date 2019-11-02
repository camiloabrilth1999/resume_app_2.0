class UsersOcupationsController < ApplicationController

  def index
    if params[:user_id]
       @users_ocupations = User.find(params[:user_id]).users_ocupations
    else
       @users_ocupations = UsersOcupation.all
    end
  end

  def new
    @users_ocupations = UsersOcupation.new
  end

  def create
    @user = User.find(params[:user_id])
    @users_ocupations = UsersOcupation.new(users_ocupation_params)
    @users_ocupations.user_id = @user.id
    if @users_ocupations.save
      redirect_to user_users_ocupations_url
    else
      render 'new'
    end
  end

  def users_ocupation_params
    params.require(:users_ocupation).permit(:description, :years, :months)
  end

end
