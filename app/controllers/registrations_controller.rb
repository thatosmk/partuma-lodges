class RegistrationsController < Devise::RegistrationsController

    def create
        super
        if @user.persisted?
            UserMailer.new_registration(@user, {}).deliver
        end
    end
  protected

  def after_sign_up_path_for(resource)
    new_account_url
  end

end
