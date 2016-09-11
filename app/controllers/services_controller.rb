class ServicesController < ApplicationController

  def splash
    @company = Company.find_by_id(params[:company_id])
    @service = Service.find_by(params[:service_id])
  end

  def new
    @service = Service.new
  end

  def create
    @company = Company.find_by_id(params[:company_id])
    @service = Service.new(service_params)
    if @service.save
      @company.services.push(@service)
      flash[:success] = "Your service was successfully submitted"
      redirect_to services_path
    else
      flash[:notice] = "There are some errors. #{@service.errors.full_messages.join(', ')}. Plese try again."
      redirect_to new_service_path
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :category)
  end
end
