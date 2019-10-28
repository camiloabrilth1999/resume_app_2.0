class BasicMiddleEducationsController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @basic_middle_educations = BasicMiddleEducation.new
  end

  def create
    @user = User.find(current_user.id)
    @basic_middle_educations = BasicMiddleEducation.new(basic_middle_education_params)
    @basic_middle_educations.user_id = @user.id
    if @basic_middle_educations.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @basic_middle_educations = @user.basic_middle_educations
  end

  def basic_middle_education_params
    params.require(:basic_middle_education).permit(:last_degree, :degree_obtained, :date_degree)
  end
end
