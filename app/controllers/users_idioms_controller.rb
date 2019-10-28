class UsersIdiomsController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @users_idioms = UsersIdiom.new
  end

  def create
    @user = User.find(current_user.id)
    @users_idioms = UsersIdiom.new(users_idiom_params)
    @users_idioms.user_id = @user.id
    if @users_idioms.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @users_idioms = @user.users_idioms
  end

  def users_idiom_params
    params.require(:users_idiom).permit(:name_idiom, :to_speak, :to_read, :to_write)
  end

end
