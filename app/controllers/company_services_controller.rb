class CompanyServicesController < ApplicationController


  def index
    @companies = Company.all
    @company = Company.find_by(params[:company_id])
  end

  def new
    @service = Service.new
  end

  def create
    @company = Company.find_by_id(params[:company_id])
    @service = Service.new(service_params)
    @company.services << @service
    if @service.save
      flash[:notice] = "New service was successfully submitted"
      redirect_to company_services_path
    else
      flash[:notice] = "#{@service.errors.full_messages.join(', ')}. Plese try again."
      redirect_to new_service_path
    end
  end

  def edit
    @service = Company.find(params[:company_id]).services.find_by(params[:service_id])
  end

def update
  @service = Company.find(params[:company_id]).services.find_by(params[:service_id])
  if @service.update(service_params)
    flash[:notice] = "Service was successfully updated"
    redirect_to company_services_path
  else
    render :edit
  end
end

  def delete
    @service = Company.find(params[:company_id]).services.find_by(params[:service_id]).delete
    flash[:notice] = "Service was successfully deleted"
    redirect_to company_services_path
  end

  private

  def service_params
    params.require(:service).permit(:name, :category)
  end
end
