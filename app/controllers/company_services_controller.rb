class CompanyServicesController < ApplicationController
  include AuthHelper
  include SessionsHelper

  def index
    @company = Company.find(params[:company_id])
    @services = @company.services.all
  end

  def new
    @service = Service.new
    if auth_through_admin
      render :new
    else
      auth_fail
    end
  end

  def create
    @company = Company.find_by_id(params[:company_id])
    @service = Service.new(service_params)
    if auth_through_admin
      if @service.save
        @company.services << @service
        flash[:notice] = "New service was successfully submitted"
        redirect_to company_services_path
      else
        flash[:alert] = "#{@service.errors.full_messages.join(', ')}. Plese try again."
        redirect_to new_service_path
      end
    else
      auth_fail
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :category)
  end
end
