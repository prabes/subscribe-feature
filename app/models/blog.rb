class Blog < ApplicationRecord
  after_create :send_notification

  private
  def send_notification
    BlogNotification.send_all(self)
  end
end
