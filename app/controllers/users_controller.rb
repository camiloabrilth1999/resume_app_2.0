class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user == @user or current_user.has_role? :admin
      @military_card = MilitaryCardType.find(@user.military_card_type_id)
      @nacionality = NacionalityType.find(@user.nacionality_type_id)
      @city =  City.find(@user.city_birth_id)
      @city_residence = City.find(@user.city_residence_id)
    else
      redirect_to root_path
    end
  end

end
