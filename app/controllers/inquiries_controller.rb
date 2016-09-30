class InquiriesController < ApplicationController

  def new
    @inquiry= Inquiry.new
  end

  def create
    @company=Company.all
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.request = request
    if @inquiry.deliver
      flash[:notice] = "Message was successfully submitted"
    else
      flash[:alert] = "#{@inquiry.errors.full_messages.join(', ')}. Plese try again."
      render :new
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:first_name, :last_name, :email, :car_make, :car_model, :car_year, :message)
  end
end
