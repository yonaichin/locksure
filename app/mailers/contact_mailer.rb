class ContactMailer < ActionMailer::Base
  default from: "llanna.holl@gmail.com"

  def contact_mail(options={})
    @contact = options
    mail(to: "llanna.holl@gmail.com", subject: 'Contact')
  end
end
