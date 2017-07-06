class RegistrationsController < Devise::RegistrationsController

  def create
    if params[:commit] == "Wait, I'm a Provider"
      @provider = Provider.new(buyer_params)
      self.resource = @provider
      render :new_provider
    else
      binding.pry
      super
    end
  end

  def resource_name
    params[:provider] ? :provider : :buyer
  end

  def resource_class
    params[:provider] ? Provider : Buyer
  end

  private
  def buyer_params
    params.require(:buyer).permit(:email, :password, :password_confirmation, :type)
  end

end