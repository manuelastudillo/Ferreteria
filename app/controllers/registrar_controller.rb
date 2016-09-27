class RegistrarController < Devise::RegistrarController
 private

  def sign_up_params
    params.require(:usuarios).permit(:nombre, :email, :password, :password_confirmation)
  end
def account_update_params
    params.require(:usuarios).permit(:nombre, :email, :password, :password_confirmation, :current_password)
  end
end

end
