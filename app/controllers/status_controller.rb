class StatusController < ApplicationController
  def index
    @ask = Status.new
  end

  def create
    @ask = Status.new(status_params)
    if @ask.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to root_path
    else
      redirect_to redirect_to
    end
  end

  private

  def status_params
    params.require(:status).perrmit(:name, :message)
  end
end
