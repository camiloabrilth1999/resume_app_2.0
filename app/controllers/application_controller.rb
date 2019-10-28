class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

     def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :city_birth_id, :city_residence_id,
            :military_card_id, :national_identifier_type_id, :gender_id, :nacionality_type_id, :first_surname, :second_surname, :number_phone,
            :birth_date, :country_nationality, :number_national_identifier, :address, :military_card_type_id, :number_military_card, :dm_military_card)}
          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :city_birth_id, :city_residence_id,
            :military_card_id, :national_identifier_type_id, :gender_id, :nacionality_type_id, :first_surname, :second_surname, :number_phone,
            :birth_date, :country_nationality, :number_national_identifier, :address, :military_card_type_id, :number_military_card, :dm_military_card, :current_password)}
     end
end
