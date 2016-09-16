class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    @company = Company.find_by(params[:company_id])
  end

  def splash
    @companies = Company.all
    @company = Company.find_by(params[:company_id])
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
      flash[:notice] = "New company successfully created."
      redirect_to companies_path
    else
      flash[:alert] = "#{@company.errors.full_messages.join(', ')}. Please, try again"
      redirect_to new_company_path
    end
  end

  def edit
    @company = Company.find_by_id(params[:company_id])
  end

  def update
    @company = Company.find_by_id(params[:company_id])
    if @company.image_url == ""
      @company.image_url = "http://www.fantasticviewpoint.com/wp-content/uploads/2016/07/travel.jpg"
    end
    if @company.update(company_params)
      flash[:notice] = "Company successfully updated"
      redirect_to companies_path
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find_by_id(params[:company_id])
    @company.destroy
    flash[:notice] = "Company was successfully deleted"
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :city, :phone, :email, :image_url)
  end
end
