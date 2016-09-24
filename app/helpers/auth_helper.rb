module AuthHelper
  def auth_through_admin
    current_admin != nil
  end

  def auth_fail
    flash[:alert] = "You are not authorized for this action."
    redirect_to root_path
  end

end
