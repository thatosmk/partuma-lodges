class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_room
  before_action :authenticate_user!

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = current_user.bookings.build
  end

  # GET /bookings/1/edit
  def edit
  end

  def confirmation
  end
  # POST /bookings
  # POST /bookings.json
  def create
    @booking = current_user.bookings.build(booking_params)
    @booking.account_id = current_user.account.id
    @booking.room_id = @room.id

    respond_to do |format|
      if @booking.save
          # update booked for rooms
          @booked = @room.booked
          @room.update_attributes(booked: @booked+1)

          # send an email to both Customer and Partuma
          BookingMailer.with(user: current_user).booking_confirmation_email.deliver_now
          BookingMailer.with(user: current_user).received_booking_email.deliver_now

        format.html { redirect_to room_confirmation_path(@room), notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:account_id, :adults, :children, :room_id, :user_id, :checkin_day, :checkout_day, :number_of_rooms)
    end

    def set_room
      @room = Room.find(params[:room_id])
    end
end
