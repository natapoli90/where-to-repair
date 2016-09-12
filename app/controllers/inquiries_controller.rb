class InquiriesController < ApplicationController

  def new
    @inquiry= Inquiry.new
  end

  def create
    @inquiry= Inquiry.new(params[:inquiry])
    @inquiry.request = request
    if @inquiry.deliver
      flash[:error] = nil
    else
      flash[:error] = "There was en error, inquiry wasn't sent"
      render :new
    end
  end
end
