class UsersOcupationsController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @users_ocupations = UsersOcupation.new
  end

  def create
    @user = User.find(current_user.id)
    @users_ocupations = UsersOcupation.new(users_ocupation_params)
    @users_ocupations.user_id = @user.id
    if @users_ocupations.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @users_ocupations = @user.users_ocupations
  end

  def users_ocupation_params
    params.require(:users_ocupation).permit(:description, :years, :months)
  end

end
