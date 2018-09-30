# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

    def booking_confirmation_email
        user = User.last
        BookingMailer.with(user: user).booking_confirmation_email
    end

    def received_booking_email
        user = User.last
        BookingMailer.with(user: user).received_booking_email
    end
end
