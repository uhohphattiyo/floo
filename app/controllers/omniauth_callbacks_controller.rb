class OmniauthCallbacksController < Devise::OmniauthCallbacksController
 
  def facebook
    user = User.find_for_oauth(request.env["omniauth.auth"])

    if user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end

  end

=begin
  [:linkedin, :facebook, :twitter].each do |provider|
    provides_callback_for provider
  end
=end
  def after_sign_in_path_for(resource)
    if resource.email_verified?
      super resource
    else
      finish_signup_path(resource)
    end
  end
end