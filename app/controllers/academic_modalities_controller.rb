class AcademicModalitiesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @academic_modalities = @user.academic_modalities.uniq
  end

end
