class UsersIdiomsController < ApplicationController

  def index
    if params[:user_id]
       @users_idioms = User.find(params[:user_id]).users_idioms
    else
       @users_idioms = UsersIdiom.all
    end
  end

  def new
    @users_idioms = UsersIdiom.new
  end

  def create
    @user = User.find(params[:user_id])
    @users_idioms = UsersIdiom.new(users_idiom_params)
    @users_idioms.user_id = @user.id
    if @users_idioms.save
      redirect_to user_users_idioms_url
    else
      render 'new'
    end
  end

  def users_idiom_params
    params.require(:users_idiom).permit(:name_idiom, :to_speak, :to_read, :to_write)
  end

end
