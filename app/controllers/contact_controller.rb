class ContactController < ApplicationController

  def index
  end

  def create
    @contact = ContactForm.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to contact_index_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :index
    end
  end
end