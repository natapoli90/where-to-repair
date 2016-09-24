module SessionsHelper

  def login(admin)
    session[:admin_id] = admin.id
    @current_admin = admin
  end

  def current_admin
    @current_admin ||= Admin.find_by_id(session[:admin_id])
  end

  def logged_in?
    if current_admin == nil
      redirect_to '/login'
    end
  end

  def logged_in
    unless logged_in?
      flash[:danger] = "Please log in as Admin"
      redirect_to '/login'
    end
  end

  def logout
    @current_admin = session[:admin_id] = nil
  end
end
