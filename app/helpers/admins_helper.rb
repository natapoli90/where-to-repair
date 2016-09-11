module AdminsHelper
  def auth_through_admin
    current_admin != nil && current_admin.id == @admin.id
  end

  def auth_fail(reason, redirect_path)
    flash[:notice] = reason
    redirect_to redirect_path
  end
end
