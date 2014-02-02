ActionMailer::Base.default_url_options = { :host => 'localhost' }
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "medellin.com",
    :user_name            => "jvidalba",
    :password             => "vrpRMB96",
}