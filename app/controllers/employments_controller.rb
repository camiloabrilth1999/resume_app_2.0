class EmploymentsController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @employments = Employment.new
  end

  def create
    @user = User.find(current_user.id)
    @employments = Employment.new(employments_params)
    @employments.user_id = @user.id
    if @employments.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @employments = @user.employments.order(current_job: :desc)
  end

  def employments_params
    params.require(:employment).permit(:type_enterprise, :name_enterprise, :email_enterprise, :number_phone_enterprise, :address_enterprise, :city_enterprise_id,
    :charge_company, :dependency, :entry_date, :retirement_date, :current_job)
  end

end
