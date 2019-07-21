class BlogNotification 
  
  def self.send_all(blog)
    # Takes all data from table as a array
    users = Subscriber.all
    

    # Takes array loop each 
    users.each do |user|
      BlogMailer.blog_notification(user,blog).deliver
    end

    # calls Each with blog_notification  
  end
  
end