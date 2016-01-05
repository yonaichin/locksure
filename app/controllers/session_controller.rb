class SessionController < Devise::SessionsController

  def new
    if User.count == 0
      redirect_to new_user_registration_path
    elsif
      self.resource = resource_class.new(sign_in_params)
      clean_up_passwords(resource)
      yield resource if block_given?
      respond_with(resource, serialize_options(resource))
    end
  end

end
