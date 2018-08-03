class SiteController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def profile
    @user = current_user
  end
end
