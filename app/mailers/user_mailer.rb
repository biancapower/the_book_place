class UserMailer < ApplicationMailer

  default from: 'bt96713295@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to The Book Place')
  end

end
