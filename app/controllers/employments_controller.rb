class EmploymentsController < ApplicationController

  def index
    if params[:user_id]
       @employments = User.find(params[:user_id]).employments.order(current_job: :desc)
    else
       @employments = Employment.all
    end
  end

  def new
    @employments = Employment.new
  end

  def create
    @user = User.find(params[:user_id])
    @employments = Employment.new(employments_params)
    @employments.user_id = @user.id
    if @employments.save
      redirect_to user_employments_url
    else
      render 'new'
    end
  end

  def employments_params
    params.require(:employment).permit(:type_enterprise, :name_enterprise, :email_enterprise, :number_phone_enterprise, :address_enterprise, :city_enterprise_id,
    :charge_company, :dependency, :entry_date, :retirement_date, :current_job)
  end

end
