class ApplicationController < ActionController::Base

    # define routes for after sign up and after sign in
    protected

    def after_sign_up_path_for(user)
        new_account_url
    end

end
