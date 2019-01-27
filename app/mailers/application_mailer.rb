class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@gmail.com'
  layout 'mailer'

  def send_new_user_message(user)
    mail(to: user.email, subject: 'Welcome Email')
  end
end
