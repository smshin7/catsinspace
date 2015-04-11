class User < ActiveRecord::Base

  has_secure_password
 
  has_many :votes, foreign_key: "user_id"
end
