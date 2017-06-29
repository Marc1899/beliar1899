class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
  settings_path
end
  def new

super

end



# POST /resource

def create

@user = current_user

#devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])

super

if @user.save

UserNotifierMailer.send_signup_email(@user).deliver

# MarketingMailer.onboarding_mailer(@user).deliver_now

# ApplicationJob.perform_now(@user)

# NewMovieMailer.perform_now(@user)

# Marketing::OnboardingMailer.perform_now(@user)

# Marketing::OnboardingMailer.set(wait: 1.minutes).perform.later(@user) #perform_later(@user)

# Marketing::OnboardingMailer.set(wait: 1.hour).perform_later(@user)

end

end
