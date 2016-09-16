class SessionsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      login(@admin)
      flash[:notice] = "Successfully logged in."
      redirect_to companies_path
    else
      flash[:alert] = "Incorrect email or password."
      redirect_to '/login'
    end
  end

  def destroy
    session[:admin_id] = nil
    flash[:notice] = "Successfully logged out."
    redirect_to '/login'
  end

  private
  def admin_params
    params.require(:admin).permit(:email, :password)
  end
end
