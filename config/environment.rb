# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
IssuesTracker::Application.initialize!

config.action_mailer.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.gmail.com',
	:port => 587,
	:domain => 'gmail.com',
	:authentication => :plain,
	:user_name => 'prumat3@gmail.com',
	:password => 'TestingAccount' }

config.action_mailer.raise_delivery_errors = true
