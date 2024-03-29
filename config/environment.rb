# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
# configure actionmailer to use sendgrid
ActionMailer::Base.smtp_settings ={
    
        user_name: ENV["sendgrid_username"],
        password:  ENV["sendgrid_password"],
        domain: 'https://fast-wave-42601.herokuapp.com',
        address:  'smtp.sendgrid.net',
        port: 587,
        authentication: :plain,
        enable_starttls_auto: true
}
