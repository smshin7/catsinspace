class Vote < ActiveRecord::Base
  belongs_to :image, foreign_key: "image_id", class_name: "Image"
  belongs_to :user, foreign_key: "user_id", class_name: "User"
end
