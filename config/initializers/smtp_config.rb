Nyyms::Application.config.action_mailer.delivery_method = :smtp

if ENV['SMTP_HOST']
  config.action_mailer.smtp_settings = {
    :address              => ENV.fetch('SMTP_HOST'),
    :port                 => ENV.fetch('SMTP_PORT', 25).to_i,
    :domain               => ENV.fetch('SMTP_DOMAIN'),
    :user_name            => ENV.fetch('SMTP_USERNAME'),
    :password             => ENV.fetch('SMTP_PASSWORD'),
    :authentication       => ENV.fetch('SMTP_AUTH_METHOD', :plain).to_sym,
    :enable_starttls_auto => ENV.fetch('SMTP_ENABLE_STARTTLS', "true") == "true"
  }
else
  require 'yaml'
  stmp_settings_file = File.expand_path('gmail_smtp_webmaster.yml', File.dirname(__FILE__))
  config.action_mailer.smtp_settings = YAML.load(File.open(stmp_settings_file, 'rb'))
end
