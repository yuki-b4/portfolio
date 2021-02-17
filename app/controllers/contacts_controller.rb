class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(status_params)
    if @contact.save
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
