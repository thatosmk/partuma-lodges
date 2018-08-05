class SiteController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :profile, :users, :bookings]

  def room_bookings
    @bookings = Booking.all
  end

  def index
  end

  def about
  end

  def dashboard
  end

  def contact
  end

  def profile
    @user = current_user
  end

  def users
    @users = User.all
  end

end
