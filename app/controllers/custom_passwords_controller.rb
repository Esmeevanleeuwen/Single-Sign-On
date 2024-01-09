class CustomPasswordsController < Devise::PasswordsController
  before_action :sign_out_user, only: [:new, :create]

  # Overschrijf de require_no_authentication methode
  def require_no_authentication
    return if action_name == 'edit' || action_name == 'update'
    super
  end

  protected

  def sign_out_user
    sign_out(current_user) if user_signed_in?
  end

  def after_resetting_password_path_for(resource)
    sign_out(resource)
    super(resource)
  end
end
