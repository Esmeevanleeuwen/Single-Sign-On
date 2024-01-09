class CustomPasswordsController < Devise::PasswordsController
    # Voeg hier aangepaste methoden of overrides toe
    protected
  
    def after_resetting_password_path_for(resource)
      # Voeg hier de logica toe om de gebruiker uit te loggen
      sign_out(resource)
      super(resource) # Roept de originele Devise-methode aan
    end
  end
  