class CompaniesController < ApplicationController
  include AuthHelper
  include SessionsHelper

  def index
    @companies = Company.all
    @company = Company.find_by(params[:company_id])
  end

  def splash
    @companies = Company.all
  end

  def new
    @company = Company.new
    if auth_through_admin
      render :new
    else
      auth_fail
    end
  end

  def create
    @company = Company.new(company_params)
    if @company.image_url == ""
      @company.image_url = "http://i.imgur.com/ZiixHWX.jpg"
    end
    if auth_through_admin
      if @company.save
        flash[:notice] = "New company successfully created."
        redirect_to companies_path
      else
        flash[:alert] = "#{@company.errors.full_messages.join(', ')}. Please, try again."
        redirect_to new_company_path
      end
    else
      auth_fail
    end
  end

  def edit
    @company = Company.find(params[:company_id])
    if auth_through_admin
      render :edit
    else
      auth_fail
    end
  end

  def update
    @company = Company.find(params[:company_id])
    if @company.image_url == ""
      @company.image_url = "http://i.imgur.com/ZiixHWX.jpg"
    end
    if auth_through_admin
      if @company.update(company_params)
        flash[:notice] = "Company successfully updated."
        redirect_to companies_path
      else
        flash[:alert] = "#{@company.errors.full_messages.join(', ')}. Please, try again."
        render :edit
      end
    else
      auth_fail
    end
  end

  def destroy
    @company = Company.find(params[:company_id])
    if auth_through_admin
      @company.destroy
      flash[:notice] = "Company was successfully deleted."
      redirect_to companies_path
    else
      auth_fail
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :city, :phone, :email, :image_url)
  end
end
