class UsersAcademicModalitiesController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @users_academic_modalities = UsersAcademicModality.new
  end

  def create
    @user = User.find(current_user.id)
    @users_academic_modalities = UsersAcademicModality.new(users_academic_modalities_params)
    @users_academic_modalities.user_id = @user.id
    if @users_academic_modalities.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def users_academic_modalities_params
    params.require(:users_academic_modality).permit(:academic_modality_id, :number_approved_semesters, :graduate,
                                 :name_studies, :number_professional_card, :date_completation_studie)
  end

end
