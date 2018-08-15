class AvatarController < ApplicationController
  before_action :authenticate_user!

  def create
      if(params[:avatar])
        current_user.avatar.attach(params[:avatar])
        redirect_to profile_url
      end
  end

  def update
      if(params[:avatar])
        current_user.avatar.attach(params[:avatar])
        redirect_to profile_url
      end
      redirect_to profile_url
  end

  def destroy
    current_user.avatar.purge

    redirect_to profile_url
  end
end
