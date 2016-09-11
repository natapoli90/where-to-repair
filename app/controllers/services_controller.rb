class ServicesController < ApplicationController

  def index
    @company = Company.find_by_id(params[:company_id])
    @service = Service.find_by(params[:service_id])
  end
end
