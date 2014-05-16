ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.wp.pl',
  :port           => '465',
  :domain         => 'notes.com',
  :authentication => :login,
  :user_name      => 'qm806j@wp.pl',
  :password       => 'is336lam',
  :ssl                  => true,
  :openssl_verify_mode  => 'none'
}
