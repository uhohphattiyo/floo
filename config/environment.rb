# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!



    #for omniauth facebook auth
    # Email
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
 config.action_mailer.default_url_options = { :host => config.swille }
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com', 
    port: '587',
    enable_starttls_auto: true,
    user_name: 'someuser',
    password: 'somepass',
    authentication => :plain,
    domain => 'somedomain.com'
  }