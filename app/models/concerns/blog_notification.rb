class BlogNotification 

  include Sidekiq::workers
  sidekiq_options retry: false
  
  def perform ()
    1000.times.puts"okay !"
  end

  # def self.send_all(blog)
  #   # Takes all data from table as a array
  #   users = Subscriber.all
    

  #   # Takes array loop each 
  #   users.each do |user|
  #     BlogMailer.blog_notification(user,blog).deliver
  #   end
    
  #   # Chunk User in limit of each 500 users ((find_in_batch(diy))
  #   # raise 500 jobs for each 500 subscribers
  #   # use sidekiq workers
  #   # https://github.com/mperham/sidekiq/wiki
  # end
  
end