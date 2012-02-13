class UserMailer < ActionMailer::Base
  def registration_confirmation(user)  
    @user=user
    mail(:to => user.email, :subject => "Activation Link...", :from => "ramprabhu.heroku.com")  
  end 
end
