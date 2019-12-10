class BookingMailer < ApplicationMailer
    default :from => 'partuma.lodge@gmail.com'

    # initial email to confirm booking
    def booking_confirmation_email
        @user = params[:user]
        mail(to: @user.email, subject: "Booking at Partuma Lodge")
    end

    def received_booking_email
        @user = params[:user]
        mail(to: "partuma.lodge@gmail.com", subject: "Booking from #{@user.email}")
    end
end
