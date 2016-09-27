class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:usuario).permit(:nombre, :rut, :fechaingreso, :email, :nombre, :calle, :comuna, :telefono, :telefono1, :sueldo, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation, :current_password)
  end
end