APP_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/settings.yml")[RAILS_ENV]

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'ramprabhu.heroku.com',
  :user_name            => 'nramprabu@gmail.com',
  :password             => 'nsramprabu38',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }
  
  
