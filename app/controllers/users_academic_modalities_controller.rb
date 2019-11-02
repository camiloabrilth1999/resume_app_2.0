class UsersAcademicModalitiesController < ApplicationController

  def index
    if params[:user_id]
       @academic_modalities = User.find(params[:user_id]).academic_modalities.uniq
    else
       @academic_modalities = AcademicModalities.all
    end
  end

  def new
    @users_academic_modalities = UsersAcademicModality.new
  end

  def create
    @user = User.find(params[:user_id])
    @users_academic_modalities = UsersAcademicModality.new(users_academic_modalities_params)
    @users_academic_modalities.user_id = @user.id
    if @users_academic_modalities.save
      redirect_to user_users_academic_modalities_url
    else
      render 'new'
    end
  end

  def users_academic_modalities_params
    params.require(:users_academic_modality).permit(:academic_modality_id, :number_approved_semesters, :graduate,
                                 :name_studies, :number_professional_card, :date_completation_studie)
  end

end
