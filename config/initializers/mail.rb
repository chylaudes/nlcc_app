ActionMailer::Base.smtp_settings{
  address: "smtp.mandrillapp.com",
  port: 587,
  enable_starttls_auto: true,
  user_name: ENV[MANDRILL_EMAIL],
  password: ENV[MANDRILL_API],
  authentication: "login"
}
