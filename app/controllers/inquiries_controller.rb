class InquiriesController < ApplicationController

  def new
    @inquiry= Inquiry.new
  end

  def create
    @inquiry= Inquiry.new(inquiry_params)
    respond_to do |format|
    if @inquiry.save
      format.html { render action: 'create' }
      format.json { render json: @inquiry, status: :created, location: @inquiry }
    else
      format.html { render action: 'new' }
      format.json { render json: @inquiry.errors, status: :unprocessable_entity }
    end
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:first_name, :last_name, :email, :car_make, :car_maodel, :car_year, :message)
  end
end
