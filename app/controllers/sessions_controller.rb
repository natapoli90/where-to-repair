class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.confirm(admin_params)
    if @admin
      session[:admin_id] = @admin.id
      flash[:success] = "Successfully logged in."
      redirect_to root_path
    else
      flash[:error] = "Incorrect email or password."
      redirect_to '/login'
    end
  end

  def destroy
    session[:admin_id] = nil
    flash[:notice] = "Successfully logged out."
    redirect_to root_path
  end

  private
  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end
