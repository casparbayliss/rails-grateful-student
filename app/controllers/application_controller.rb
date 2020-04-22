class ApplicationController < ActionController::Base
  before_action :authenticate_teacher!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |teacher_params|
      teacher_params.permit({ roles: ['Charterhouse', 'Eton', 'Cranleigh'] }, :first_name, :last_name, :email, :password, :password_confirmation)
    end
  end
end
