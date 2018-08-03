class AvatarController < ApplicationController
  def create
      if(params[:avatar])
        current_user.avatar.attach(params[:avatar])
        redirect_to root_url
      end
  end

  def update
    current_user.avatar.attach(params[:avatar])

    redirect_to root_url
  end

  def destroy
    current_user.avatar.purge

    redirect_to root_url
  end
end
