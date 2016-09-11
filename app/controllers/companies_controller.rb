class CompaniesController < ApplicationController
  include SessionsHelper
  include AdminsHelper

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by_id(params[:company_id])
  end

  def new
    @company = Company.new
  end

  def create
      @company = Company.new(company_params)
      if @company.image_url == ""
        @company.image_url = "http://i.imgur.com/ixpF82Y.png"
      end
      if @company.save
        login(@admin)
        flash[:notice] = "You successfully created new company."
        redirect_to show_company_path(@company)
      else
        flash[:notice] = "There are some errors. #{@user.errors.full_messages.join(', ')}. Please, try again"
        redirect_to companies_path
      end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :city, :phone, :email, :image)
  end
end
