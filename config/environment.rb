# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
if Rails.env.development?
		# configure actionmailer to use sendgrid
		ActionMailer::Base.smtp_settings ={
			
				:user_name => 'careerdue',
				:password => ENV["send_grid_password"],
				:domain => 'localhost',
				:address => 'smtp.sendgrid.net',
				:port => 587,
				:authentication => :plain,
				:enable_starttls_auto => true
		}
end
if Rails.env.production?
		# configure actionmailer to use sendgrid
		ActionMailer::Base.smtp_settings ={
			
				:user_name => 'careerdue',
				:password => ENV["send_grid_password"],
				:domain => 'partuma.co.za',
				:address => 'smtp.sendgrid.net',
				:port => 587,
				:authentication => :plain,
				:enable_starttls_auto => true
		}
end
