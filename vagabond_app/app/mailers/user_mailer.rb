class UserMailer < ApplicationMailer
  default from: 'example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/signup'
    mail(to: "mcheng.oc@gmail.com", subject: 'Welcome to Vagabond!')
  end
end
