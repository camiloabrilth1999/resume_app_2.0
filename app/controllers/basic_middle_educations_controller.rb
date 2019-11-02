class BasicMiddleEducationsController < ApplicationController

  def index
    if params[:user_id]
       @basic_middle_educations = User.find(params[:user_id]).basic_middle_educations
       authorize @basic_middle_educations
    else
       @basic_middle_educations = BasicMiddleEducation.all
       authorize @basic_middle_educations
    end
  end

  def new
    @basic_middle_educations = BasicMiddleEducation.new
  end

  def create
    @user = User.find(params[:user_id])
    @basic_middle_educations = BasicMiddleEducation.new(basic_middle_education_params)
    @basic_middle_educations.user_id = @user.id
    if @basic_middle_educations.save
      redirect_to user_basic_middle_educations_url
    else
      render 'new'
    end
  end

  def basic_middle_education_params
    params.require(:basic_middle_education).permit(:last_degree, :degree_obtained, :date_degree)
  end
end
