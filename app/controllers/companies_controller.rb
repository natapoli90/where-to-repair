class CompaniesController < ApplicationController
  before_action :logged_in?, except: [:index, :show]

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
        flash[:notice] = "You successfully created new company."
        redirect_to show_company_path(@company)
      else
        flash[:notice] = "There are some errors. #{@company.errors.full_messages.join(', ')}. Please, try again"
        redirect_to companies_path
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
        flash[:success] = "#{@company.name} successfully updated"
        redirect_to show_company_path(@company)
      else
        render :edit
      end
    end

  def destroy
    @company = Company.find_by_id(params[:company_id])
    @company.destroy
    flash[:success] = "Company \"#{@company.name}\" was successfully deleted"
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :address, :city, :phone, :email, :image)
  end
end
