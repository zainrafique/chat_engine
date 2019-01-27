class AdminMailer < ApplicationMailer
  def send_new_user_message(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome Email')
  end
end