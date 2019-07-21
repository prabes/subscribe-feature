class Subscriber < ApplicationRecord
 
  validate_email = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: {with: validate_email}
  
end
