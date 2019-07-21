class BlogMailer < ApplicationMailer
  default from: "rdeyvil11@gmail.com"

  def blog_notification(subscriber,blog)
    @blog = blog
    @email= subscriber.email 
    mail(to: @email, subject: "New Post")
    
  end 
end
