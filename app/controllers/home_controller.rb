class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:profile]

  def index
    # Je huidige index logica
  end

  def profile
    # Geen extra logica nodig als je alleen current_user gebruikt in de view
  end

  def reset_password
    sign_out(current_user) if user_signed_in?
    redirect_to new_user_password_path
  end
  
end
