class Notifier < ActionMailer::Base
  def signup_notification(user, password)
    subject     "Signup information for Oilzilla"
    @user = user
    @password = password
    recipients  [user.email]
    from        "oilzilla2@gmail.com"
    sent_on     Time.now
  end
end
