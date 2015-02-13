class ContactController < ApplicationController

  def index
  end

  def create
    ContactMailer.contact_mail(params[:contact]).deliver
    render :index
  end
end