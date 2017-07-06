class RegistrationsController < Devise::RegistrationsController

  def create
    if params[:commit] == "Wait, I'm a Provider"
      @provider = Provider.new(sign_up_params)
      self.resource = @provider
      render :new_provider
    else
      super
    end
  end

  def devise_parameter_sanitizer
    resource_name = params[:provider] ? :provider : :buyer
    @devise_parameter_sanitizer ||= Devise::ParameterSanitizer.new(resource_class, resource_name, params)
  end

end