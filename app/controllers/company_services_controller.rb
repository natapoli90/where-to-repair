class CompanyServicesController < ApplicationController
  include AuthHelper
  include SessionsHelper

  def index
  @company = Company.find_by_id(params[:company_id])
  @service = Service.find_by_id(params[:service_id])
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
    @company.services << @service
    if auth_through_admin
      if @service.save
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

  def edit
    @service = Company.find(params[:company_id]).services.find_by(params[:service_id])
    if auth_through_admin
      render :edit
    else
      auth_fail
    end
  end

def update
  @service = Company.find(params[:company_id]).services.find_by(params[:service_id])
  if auth_through_admin
    if @service.update(service_params)
      flash[:notice] = "Service was successfully updated"
      redirect_to company_services_path
    else
      render :edit
    end
  else
    auth_fail
  end
end

  def delete
    if auth_through_admin
      @service = Company.find(params[:company_id]).services.find_by(params[:service_id]).delete
      flash[:notice] = "Service was successfully deleted"
      redirect_to company_services_path
    else
      auth_fail
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :category)
  end
end
