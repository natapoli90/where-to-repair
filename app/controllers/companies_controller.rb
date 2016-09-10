class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @companies = Company.find_by(params[:id])
  end

end
