class InquiriesController < ApplicationController

  def new
    @inquiry= Inquiry.new
    @services = Service.new
  end

  def create
    @inquiry= Inquiry.new(params[:inquiry])
    @inquiry.request = request
    @service = Service.find_by(name: params[:name])
    @companies = @service.companies
    @emails = []
    @companies.each do |co|
      @emails << co.email
    end
    @inquiry.emails = @emails
    @inquiry.name = @service.name
    @inquiry.category = @service.category
    if @inquiry.deliver
      flash[:error] = nil
    else
      flash[:error] = "There was en error. #{@inquiry.errors.full_messages.join(', ')}"
      render :new
    end
  end

end
