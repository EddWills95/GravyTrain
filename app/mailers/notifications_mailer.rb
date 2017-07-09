class NotificationsMailer < ApplicationMailer
  default from: 'from@example.org'

  def signup(user)
    @name = user.name
    mail(subject: "Signup", to: user.email)
  end

end
