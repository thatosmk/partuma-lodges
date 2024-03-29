class SiteController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :profile, :users, :bookings, :add_profile_picture, :support]

  def support
      @reports = Report.all
  end
  def maintain
  end
  def add_profile_picture
    @account = Account.find(params[:account_id])
  end

  def room_bookings
    @bookings = Booking.all
  end

  def blog
    @posts = Post.all
  end

  def index
  end

  def about
  end

  def dashboard
    @visits = Ahoy::Visit.where("referring_domain IS NOT NULL")
    @bookings = Booking.all
    @users  = User.all
  end

  def contact
  end

  def profile
    @user = current_user
  end

  def users
    @users = User.all
  end

  def admin

  end

  def venues
    @rooms = Room.where(room_type: "venue").all
  end

end
